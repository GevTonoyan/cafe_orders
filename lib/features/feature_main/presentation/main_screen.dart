import 'package:cafe_order_task/features/feature_current_orders/presentation/ui/current_orders_screen.dart';
import 'package:cafe_order_task/features/feature_history/presentation/ui/history_screen.dart';
import 'package:cafe_order_task/features/feature_products/presentation/ui/products_screen.dart';
import 'package:flutter/material.dart';

/// Entry point of the application.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedIndex = 0;

  static const _mainScreenPages = <int, Widget>{
    0: ProductsScreen(),
    1: CurrentOrdersScreen(),
    2: HistoryScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _mainScreenPages[_selectedIndex]!,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_rounded),
            label: 'Current Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off),
            label: 'Order History',
          ),
        ],
      ),
    );
  }
}
