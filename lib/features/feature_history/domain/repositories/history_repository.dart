import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';

abstract interface class HistoryRepository {
  Future<List<OrderEntity>> loadHistory();
}
