import 'package:cafe_order_task/features/feature_products/data/database_manager.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';

abstract class ProductsLocalDataSource {
  Future<List<ProductEntity>> fetchAllProducts();

  Future<bool> placeOrder(List<ProductEntity> products);
}

class ProductLocalDataSourceImpl implements ProductsLocalDataSource {
  final DatabaseManager databaseManager;

  ProductLocalDataSourceImpl(this.databaseManager);

  @override
  Future<List<ProductEntity>> fetchAllProducts() async {
    // Delegate the fetching of products to DatabaseManager
    final res = await databaseManager.fetchAllProducts();
    return res.map((e) => ProductEntity.fromMap(e)).toList();
  }

  @override
  Future<bool> placeOrder(List<ProductEntity> products) async {
    final res = await databaseManager.placeOrder(products);
    return res;
  }
}
