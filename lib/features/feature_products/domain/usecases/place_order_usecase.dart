import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/domain/repositories/product_repository.dart';

class PlaceOrderUseCase {
  final ProductRepository _productRepository;

  PlaceOrderUseCase(this._productRepository);

  Future<bool> call(List<ProductEntity> products) async {
    return _productRepository.placeOrder(products);
  }
}
