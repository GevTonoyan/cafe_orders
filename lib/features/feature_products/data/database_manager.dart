import 'package:cafe_order_task/core/constants/constant_keys.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseManager {
  static Database? _database;

  // Function to ensure the database is initialized and ready
  Future<void> initializeDatabase() async {
    // Open the database if not already opened
    _database ??= await _openDatabase();

    // Check if fake data has already been inserted
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDataInserted = prefs.getBool(ConstantKeys.isDataInserted) ?? false;

    if (!isDataInserted) {
      await _insertFakeData(_database!);
      await prefs.setBool(ConstantKeys.isDataInserted, true);
    }
  }

  // Function to open the database
  Future<Database> _openDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'cafe_orders.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE product_groups (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE products (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            price REAL,
            group_id INTEGER,
            FOREIGN KEY (group_id) REFERENCES product_groups (id)
          )
        ''');

        // Create orders table to store order metadata
        await db.execute('''
        CREATE TABLE orders (
          order_id INTEGER PRIMARY KEY AUTOINCREMENT,
          order_date TEXT
        )
      ''');

        // Create ordered_products table to store products in the order
        await db.execute('''
        CREATE TABLE ordered_products (
          order_id INTEGER,
          product_id INTEGER,
          product_name TEXT,
          quantity INTEGER,
          price REAL,
          FOREIGN KEY (order_id) REFERENCES orders(order_id),
          FOREIGN KEY (product_id) REFERENCES products(id)
        )
      ''');
      },
    );
  }

  // Function to insert fake data
  Future<void> _insertFakeData(Database db) async {
    // Insert fake product groups
    await db.insert('product_groups', {'name': 'Drinks'});
    await db.insert('product_groups', {'name': 'Snacks'});
    await db.insert('product_groups', {'name': 'Desserts'}); // New group
    await db.insert('product_groups', {'name': 'Beverages'}); // New group

    // Insert fake products under Drinks
    await db
        .insert('products', {'name': 'Coffee', 'price': 3.5, 'group_id': 1});
    await db.insert('products', {'name': 'Tea', 'price': 2.0, 'group_id': 1});

    // Insert fake products under Snacks
    await db.insert('products', {'name': 'Chips', 'price': 1.5, 'group_id': 2});
    await db
        .insert('products', {'name': 'Cookies', 'price': 2.5, 'group_id': 2});

    // Insert fake products under Desserts
    await db.insert('products', {'name': 'Cake', 'price': 4.0, 'group_id': 3});
    await db
        .insert('products', {'name': 'Ice Cream', 'price': 3.0, 'group_id': 3});

    // Insert fake products under Beverages
    await db.insert('products', {'name': 'Soda', 'price': 1.8, 'group_id': 4});
    await db.insert('products', {'name': 'Juice', 'price': 2.5, 'group_id': 4});
  }

  // Function to fetch all products (ensure the database is initialized)
  Future<List<Map<String, dynamic>>> fetchAllProducts() async {
    await initializeDatabase(); // Make sure the database is initialized before fetching data
    return await _database!.rawQuery('''
      SELECT products.id, products.name, products.price, product_groups.name AS groupName
      FROM products
      JOIN product_groups ON products.group_id = product_groups.id
    ''');
  }

  // Function to fetch product groups (optional, similar approach)
  Future<List<Map<String, dynamic>>> fetchProductGroups() async {
    await initializeDatabase(); // Ensure initialization
    return await _database!.query('product_groups');
  }

  Future<bool> placeOrder(List<ProductEntity> products) async {
    final db = DatabaseManager._database;

    // Insert into the orders table
    int orderId = await db!.insert('orders', {
      'order_date': DateTime.now().toIso8601String(),
    });

    // Insert each product into the ordered_products table
    for (ProductEntity product in products) {
      await db.insert(
        'ordered_products',
        {
          'order_id': orderId,
          'product_id': product.id,
          'product_name': product.name,
          'price': product.price,
          'quantity': product.quantity,
        },
      );
    }

    return true;
  }

  Future<List<Map<String, dynamic>>> fetchAllOrders() async {
    await initializeDatabase(); // Ensure the database is initialized before fetching data

    // Query to fetch orders and their associated products
    final result = await _database!.rawQuery('''
    SELECT 
      o.order_id, 
      o.order_date, 
      op.product_id, 
      op.product_name, 
      op.quantity,
      op.price
    FROM orders o
    JOIN ordered_products op ON o.order_id = op.order_id
    ORDER BY o.order_date DESC
  ''');

    // Group the results by order_id
    Map<int, Map<String, dynamic>> groupedOrders = {};

    for (var row in result) {
      int orderId = row['order_id'] as int;

      // If the order is not yet in the groupedOrders map, add it
      if (!groupedOrders.containsKey(orderId)) {
        groupedOrders[orderId] = {
          'order_id': orderId,
          'order_date': row['order_date'],
          'products': [],
        };
      }

      // Add the product to the list of products for this order
      groupedOrders[orderId]?['products'].add({
        'product_id': row['product_id'],
        'product_name': row['product_name'],
        'quantity': row['quantity'],
        'price': row['price'],
      });
    }

    // Convert the map to a list of orders
    return groupedOrders.values.toList();
  }
}
