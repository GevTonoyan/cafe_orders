import 'package:cafe_order_task/core/dependency_injection/dependency_injection.dart';
import 'package:cafe_order_task/features/feature_history/data/data_sources/history_local_data_source.dart';
import 'package:cafe_order_task/features/feature_history/data/repositories/history_repository_impl.dart';
import 'package:cafe_order_task/features/feature_history/domain/repositories/history_repository.dart';
import 'package:cafe_order_task/features/feature_history/domain/usecases/load_history_usecase.dart';
import 'package:cafe_order_task/features/feature_history/presentation/blocs/history_bloc.dart';

void setupHistoryScopeDependencies() {
  // blocs
  sl.registerLazySingleton<HistoryBloc>(() => HistoryBloc(sl()));

  // use cases
  sl.registerLazySingleton<LoadHistoryUsecase>(
    () => LoadHistoryUsecase(sl()),
  );

  // repositories
  sl.registerLazySingleton<HistoryRepository>(
    () => HistoryRepositoryImpl(sl()),
  );

  // data sources
  sl.registerLazySingleton<HistoryLocalDataSource>(
    () => HistoryLocalDataSourceImpl(sl()),
  );
}
