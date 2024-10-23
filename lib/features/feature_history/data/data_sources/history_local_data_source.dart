import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';
import 'package:cafe_order_task/features/feature_products/data/database_manager.dart';

abstract interface class HistoryLocalDataSource {
  Future<List<OrderEntity>> loadHistory();
}

class HistoryLocalDataSourceImpl implements HistoryLocalDataSource {
  final DatabaseManager _databaseManager;

  const HistoryLocalDataSourceImpl(this._databaseManager);

  @override
  Future<List<OrderEntity>> loadHistory() async {
    final res = await _databaseManager.fetchAllOrders();

    // Map each order in the result to an OrderEntity
    return res.map((orderMap) => OrderEntity.fromMap(orderMap)).toList();
  }
}
