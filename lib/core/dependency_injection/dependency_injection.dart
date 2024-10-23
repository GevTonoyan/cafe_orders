import 'package:cafe_order_task/features/feature_history/history_scope.dart';
import 'package:cafe_order_task/features/feature_products/products_scope.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupDependencies() {
  setupProductsScopeDependencies();
  setupHistoryScopeDependencies();
}
