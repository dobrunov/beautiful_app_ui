import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Inventory Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontStyle: FontStyle.italic,
          // fontFamily: 'Avenir',
        ),
      ),
    );
  }
}
