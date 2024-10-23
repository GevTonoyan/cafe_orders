import 'package:cafe_order_task/core/dependency_injection/dependency_injection.dart';
import 'package:cafe_order_task/features/feature_products/data/data_sources/products_local_data_source.dart';
import 'package:cafe_order_task/features/feature_products/data/database_manager.dart';
import 'package:cafe_order_task/features/feature_products/data/repositories/products_repository_impl.dart';
import 'package:cafe_order_task/features/feature_products/domain/repositories/product_repository.dart';
import 'package:cafe_order_task/features/feature_products/domain/usecases/fetch_products_usecase.dart';
import 'package:cafe_order_task/features/feature_products/domain/usecases/place_order_usecase.dart';
import 'package:cafe_order_task/features/feature_products/presentation/blocs/product_bloc/product_bloc.dart';

void setupProductsScopeDependencies() {
  // blocs
  sl.registerLazySingleton<ProductBloc>(
    () => ProductBloc(sl(), sl()),
  );

  //use cases
  sl
    ..registerLazySingleton<FetchProductsUseCase>(
      () => FetchProductsUseCase(sl()),
    )
    ..registerLazySingleton<PlaceOrderUseCase>(
      () => PlaceOrderUseCase(sl()),
    );

  // repositories
  sl.registerLazySingleton<ProductRepository>(
    () => ProductsRepositoryImpl(sl()),
  );

  // data sources
  sl.registerLazySingleton<ProductsLocalDataSource>(
    () => ProductLocalDataSourceImpl(sl()),
  );

  // database manager
  sl.registerLazySingleton<DatabaseManager>(
    () => DatabaseManager(),
  );
}
