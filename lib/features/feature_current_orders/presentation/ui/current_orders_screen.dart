import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:cafe_order_task/features/feature_current_orders/presentation/ui/selected_product_widget.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentOrdersScreen extends StatefulWidget {
  const CurrentOrdersScreen({super.key});

  @override
  State<CurrentOrdersScreen> createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      bloc: context.read<ProductBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          orderPlaced: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Order placed successfully'),
              ),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orderPlaced: () {
            return const Center(
              child: Text('Order placed successfully'),
            );
          },
          loaded: (groupedProducts, selectedProducts) {
            if (selectedProducts.isEmpty) {
              return const Center(
                child: Text('No products selected'),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemCount: selectedProducts.length,
                      itemBuilder: (context, index) {
                        final bloc = context.read<ProductBloc>();
                        final product = selectedProducts[index];
                        return SelectedProductWidget(
                          product: product,
                          onDecrement: () => bloc.add(Decrement(product)),
                          onIncrement: () => bloc.add(Increment(product)),
                          onRemove: () =>
                              bloc.add(ClearSelectedProduct(product)),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      context
                          .read<ProductBloc>()
                          .add(PlaceOrder(selectedProducts));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Place Order (${_getTotalPrice(selectedProducts).toStringAsFixed(2)} €)',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );

    return BlocBuilder<ProductBloc, ProductState>(
      bloc: context.watch<ProductBloc>(),
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (groupedProducts, selectedProducts) {
            if (selectedProducts.isEmpty) {
              return const Center(
                child: Text('No products selected'),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemCount: selectedProducts.length,
                      itemBuilder: (context, index) {
                        final bloc = context.read<ProductBloc>();
                        final product = selectedProducts[index];
                        return SelectedProductWidget(
                          product: product,
                          onDecrement: () => bloc.add(Decrement(product)),
                          onIncrement: () => bloc.add(Increment(product)),
                          onRemove: () =>
                              bloc.add(ClearSelectedProduct(product)),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      context
                          .read<ProductBloc>()
                          .add(PlaceOrder(selectedProducts));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Place Order (${_getTotalPrice(selectedProducts).toStringAsFixed(2)} €)',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  double _getTotalPrice(List<ProductEntity> selectedProducts) {
    //calculate correct value (consider also quantity)
    return selectedProducts.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + (element.price * element.quantity),
    );
  }
}
