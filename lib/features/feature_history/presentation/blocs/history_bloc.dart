import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';
import 'package:cafe_order_task/features/feature_history/domain/usecases/load_history_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_event.dart';

part 'history_state.dart';

part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final LoadHistoryUsecase _loadHistoryUsecase;

  HistoryBloc(this._loadHistoryUsecase)
      : super(
          const HistoryState.initial(),
        ) {
    on<_LoadHistory>(_loadHistory);
  }

  Future<void> _loadHistory(
      _LoadHistory event, Emitter<HistoryState> emit) async {
    emit(const HistoryState.loading());

    try {
      final list = await _loadHistoryUsecase.call();
      emit(HistoryState.loaded(list));
    } on Exception catch (e) {
      emit(HistoryState.error(e.toString()));
    }
  }
}
