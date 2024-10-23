import 'package:cafe_order_task/core/ui_kit/app_text_styles.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:cafe_order_task/features/feature_products/presentation/ui/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductEntity> products = [];

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const LoadProducts());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      bloc: context.read<ProductBloc>(),
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (groupedProducts, _) {
            // Flatten the grouped products into a list of section headers and items
            final List<Widget> items = [];
            groupedProducts.forEach(
              (groupName, products) {
                // Add the group header
                items.add(
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      groupName,
                      style: AppTextStyles.sf18Bold,
                    ),
                  ),
                );
                // Add the products for this group
                for (var product in products) {
                  items.add(
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ProductItemWidget(
                        product: product,
                        onAddButtonPressed: () {
                          context
                              .read<ProductBloc>()
                              .add(SelectProduct(product));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${product.name} added to cart'),
                              duration: const Duration(milliseconds: 500),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
              },
            );

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: items,
              ),
            );
          },
          error: (error) => Center(
            child: Text(error),
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
