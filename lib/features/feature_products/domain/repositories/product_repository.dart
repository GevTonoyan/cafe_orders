import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';

abstract interface class ProductRepository {
  Future<List<ProductEntity>> fetchAllProducts();

  Future<bool> placeOrder(List<ProductEntity> products);
}
