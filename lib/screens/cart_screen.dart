import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navbar_controller.dart';
import '../widgets/cart_item_card.dart';
 // Assuming you have a CartItemCard widget

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          leading: IconButton(
            onPressed: () {
              backToHome();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Replace with your cart items count
                  itemBuilder: (context, index) {
                    return const CartItemCard(); // Replace with your CartItemCard widget
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: \$100.00', // Replace with your total price
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle checkout logic here
                      },
                      child: const Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavbarController>().backToHome();
  }
}
