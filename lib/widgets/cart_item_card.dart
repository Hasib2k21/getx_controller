import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Item image
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://via.placeholder.com/100', // Replace with item image URL
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
            ),
          ),
          // Item details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Item Name', // Replace with item name
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$20.00', // Replace with item price
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Quantity: 1', // Replace with item quantity
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Remove item button
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              // Handle remove item from cart
            },
          ),
        ],
      ),
    );
  }
}
