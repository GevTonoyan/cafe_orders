import 'package:cafe_order_task/features/feature_history/data/data_sources/history_local_data_source.dart';
import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';
import 'package:cafe_order_task/features/feature_history/domain/repositories/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryLocalDataSource _historyLocalDataSource;

  const HistoryRepositoryImpl(this._historyLocalDataSource);

  @override
  Future<List<OrderEntity>> loadHistory() async {
    final res = await _historyLocalDataSource.loadHistory();
    return res;
  }
}
