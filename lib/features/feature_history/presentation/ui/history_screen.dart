import 'package:cafe_order_task/features/feature_history/presentation/blocs/history_bloc.dart';
import 'package:cafe_order_task/features/feature_history/presentation/ui/history_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HistoryBloc>().add(const HistoryEvent.loadHistory());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (list) {
            if (list.isEmpty) {
              return const Center(
                child: Text('No history found'),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                itemCount: list.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final order = list[index];

                  return HistoryItemWidget(order: order);
                },
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          error: (message) {
            return Center(
              child: Text(message),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
