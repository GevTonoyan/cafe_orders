import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/domain/repositories/product_repository.dart';

class FetchProductsUseCase {
  final ProductRepository _productRepository;

  FetchProductsUseCase(this._productRepository);

  Future<List<ProductEntity>> call() async {
    return await _productRepository.fetchAllProducts();
  }
}
