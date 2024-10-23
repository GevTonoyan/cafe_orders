import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:cafe_order_task/core/ui_kit/app_text_styles.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback? onAddButtonPressed;

  const ProductItemWidget({
    super.key,
    required this.product,
    this.onAddButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: AppTextStyles.sf16Bold,
              ),
              const SizedBox(height: 8),
              Text(
                'Price: ${product.price} €',
              ),
            ],
          ),
          IconButton(
            tooltip: 'Add to orders',
            onPressed: () {
              onAddButtonPressed?.call();
            },
            icon: const Icon(
              Icons.add,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
