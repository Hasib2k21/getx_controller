import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_navbar_controller.dart';

import '../widgets/category_card.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          leading: IconButton(
            onPressed: backToHome,
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,    // 4 categories per row
            childAspectRatio: 0.75, // Ratio for category card dimensions
          ),
          itemCount: 30,  // Number of categories
          itemBuilder: (context, index) {
            return const CategoryCard();  // CategoryCard widget for each item
          },
        ),
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavbarController>().backToHome();
  }
}
