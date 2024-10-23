import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:cafe_order_task/core/ui_kit/app_text_styles.dart';
import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

class SelectedProductWidget extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback? onDecrement;
  final VoidCallback? onIncrement;
  final VoidCallback? onRemove;

  const SelectedProductWidget({
    super.key,
    required this.product,
    this.onDecrement,
    this.onIncrement,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name, style: AppTextStyles.sf16Bold),
              Text(
                '${product.price * product.quantity} €',
                style: AppTextStyles.sf14Semibold,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: AppColors.minusColor,
                ),
                onPressed: onDecrement,
              ),
              Text(product.quantity.toString()),
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: AppColors.addColor,
                ),
                onPressed: onIncrement,
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: AppColors.deleteColor,
                ),
                onPressed: onRemove,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
