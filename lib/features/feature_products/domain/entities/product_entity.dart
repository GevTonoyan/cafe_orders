class ProductEntity {
  final String id;
  final String name;
  final double price;
  final String groupName;
  int quantity;

  ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.groupName,
    this.quantity = 1,
  });

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      id: map['id'].toString(),
      name: map['name'],
      price: map['price'],
      groupName: map['groupName'],
    );
  }

// Method to create a new ProductEntity with an updated quantity
  ProductEntity updateQuantity(int newQuantity) {
    return ProductEntity(
      id: id,
      name: name,
      groupName: groupName,
      price: price,
      quantity: newQuantity,
    );
  }
}
