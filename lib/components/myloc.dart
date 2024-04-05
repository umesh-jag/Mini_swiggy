import 'package:demoapp/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mylocation extends StatelessWidget {
  mylocation({super.key});

  final textController = TextEditingController();

  void openLocationsearchbox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your Location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search Address.."),
              ),
              actions: [
                //cancel
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel"),
                )

                //save
                ,
                MaterialButton(
                  onPressed: () {
                    String newAddress = textController.text;
                    context.read<Resturant>().updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text("Save"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deliver Now",
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () => openLocationsearchbox(context),
          child: Row(
            children: [
              Consumer<Resturant>(
                builder: (context, resturant, child) => Text(
                  resturant.deliveryaddress,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        )
      ],
    );
  }
}
