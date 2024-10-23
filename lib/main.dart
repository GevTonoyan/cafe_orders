import 'package:cafe_order_task/core/dependency_injection/dependency_injection.dart';
import 'package:cafe_order_task/core/ui_kit/app_colors.dart';
import 'package:cafe_order_task/core/ui_kit/app_text_styles.dart';
import 'package:cafe_order_task/features/feature_history/presentation/blocs/history_bloc.dart';
import 'package:cafe_order_task/features/feature_main/presentation/main_screen.dart';
import 'package:cafe_order_task/features/feature_products/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ordering App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomNavBarColor,
          selectedItemColor: AppColors.bottomNavBarSelectedColor,
          unselectedItemColor: AppColors.bottomNavBarUnselectedColor,
          selectedLabelStyle: AppTextStyles.selectedLabelStyle,
          unselectedLabelStyle: AppTextStyles.unselectedLabelStyle,
        ),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => sl<ProductBloc>(),
          ),
          BlocProvider(
            create: (_) => sl<HistoryBloc>(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
