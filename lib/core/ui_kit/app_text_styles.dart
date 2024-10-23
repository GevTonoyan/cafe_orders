import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle sf18Bold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sf16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sf16Semibold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle sf16Normal = TextStyle(
    fontSize: 16,
  );

  static const TextStyle sf14Semibold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle selectedLabelStyle = TextStyle(
    color: AppColors.labelSelectedColor,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  static const TextStyle unselectedLabelStyle = TextStyle(
    color: AppColors.labelUnselectedColor,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );
}
