import 'package:cafe_order_task/features/feature_products/data/data_sources/products_local_data_source.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/domain/repositories/product_repository.dart';

class ProductsRepositoryImpl implements ProductRepository {
  final ProductsLocalDataSource localDataSource;

  ProductsRepositoryImpl(this.localDataSource);

  @override
  Future<List<ProductEntity>> fetchAllProducts() async {
    final result = await localDataSource.fetchAllProducts();
    return result;
  }

  @override
  Future<bool> placeOrder(List<ProductEntity> products) async {
    return await localDataSource.placeOrder(products);
  }
}
