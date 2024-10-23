import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:cafe_order_task/core/ui_kit/app_text_styles.dart';
import 'package:cafe_order_task/features/feature_history/domain/entities/order_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryItemWidget extends StatelessWidget {
  final OrderEntity order;

  const HistoryItemWidget({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order #${order.id}',
            style: AppTextStyles.sf18Bold,
          ),
          const SizedBox(height: 8),
          Text(
            'Date: ${DateFormat('dd.MM.yyyy').format(order.date)}',
            style: AppTextStyles.sf16Normal.copyWith(
              color: AppColors.minusColor,
            ),
          ),
          const SizedBox(height: 16),
          ...order.products.map(
            (product) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.productName} (${product.quantity})',
                      style: AppTextStyles.sf16Normal,
                    ),
                    Text(
                      '${product.price * product.quantity} €',
                      style: AppTextStyles.sf16Semibold,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
