import 'package:demoapp/models/food.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector(
      {super.key,
      required this.food,
      required this.onDecrement,
      required this.onIncrement,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // decrement btn
        GestureDetector(
          onTap: onDecrement,
          child: Icon(
            Icons.remove,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        // quantity count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Center(child: Text(quantity.toString())),
        ),

        //increment btn
        GestureDetector(
          onTap: onIncrement,
          child: Icon(
            Icons.add,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
