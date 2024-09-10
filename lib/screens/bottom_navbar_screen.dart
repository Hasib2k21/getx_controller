import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/screens/wishlist_screen.dart';
import '../controllers/bottom_navbar_controller.dart';
import 'cart_screen.dart';
import 'category_list_screen.dart';
import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final BottomNavbarController _navbarController =
      Get.find<BottomNavbarController>();

  final List<Widget> _screen = [
    const HomeScreen(),
    const CategoryListScreen(),
    const CartScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(builder: (_) {
      return Scaffold(
        body: _screen[_navbarController.selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _navbarController.selectedIndex,
          onDestinationSelected: _navbarController.changeIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.category_outlined), label: 'Category'),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            NavigationDestination(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
          ],
        ),
      );
    });
  }
}
