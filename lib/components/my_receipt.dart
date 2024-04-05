import 'package:demoapp/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
      child: Center(
        child: Column(
          children: [
            const Text("Thank You For Your Order!"),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child:  Consumer<Resturant>(builder:(context, resturant, child) => Text(resturant.displayCartReceipt()),),
            )
          ],
        ),
      ),
    );
  }
}
