import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';
import 'package:cafe_order_task/features/feature_history/domain/repositories/history_repository.dart';

class LoadHistoryUsecase {
  final HistoryRepository _historyRepository;

  LoadHistoryUsecase(this._historyRepository);

  Future<List<OrderEntity>> call() async {
    return await _historyRepository.loadHistory();
  }
}
