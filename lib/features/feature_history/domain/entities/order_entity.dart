class OrderEntity {
  final int id;
  final DateTime date;
  final List<ProductEntity> products;

  const OrderEntity({
    required this.id,
    required this.date,
    required this.products,
  });

  factory OrderEntity.fromMap(Map<String, dynamic> json) {
    return OrderEntity(
      id: json['order_id'],
      date: DateTime.parse(json['order_date']),
      products: (json['products'] as List)
          .map((product) => ProductEntity.fromMap(product))
          .toList(),
    );
  }
}

class ProductEntity {
  final int productId;
  final String productName;
  final double price;
  final int quantity;

  const ProductEntity({
    required this.productId,
    required this.productName,
    required this.price,
    required this.quantity,
  });

  factory ProductEntity.fromMap(Map<String, dynamic> json) {
    return ProductEntity(
      productId: json['product_id'],
      productName: json['product_name'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }
}
