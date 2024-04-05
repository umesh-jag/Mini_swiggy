import 'package:demoapp/models/food.dart';
import 'package:demoapp/models/resturant.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addtoCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the curent food page to go to menu
    Navigator.pop(context);

    //format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Resturant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //image
                Image.asset(widget.food.imagePath),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$' + widget.food.price.toString(),
                      style: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 176, 171, 171)),
                    ),

                    //description
                    Text(widget.food.description,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const Text(
                      "Add-ons",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),

                    //check list addon
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 147, 137, 137))),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              Addon addon = widget.food.availableAddons[index];

                              return CheckboxListTile(
                                  title: Text(addon.name),
                                  subtitle: Text('\$' + addon.price.toString()),
                                  value: widget.selectedAddons[addon],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddons[addon] = value!;
                                    });
                                  });
                            }),
                      ),
                    ),
                  ],
                ),

                //add to cart btn

                Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextButton(
                      onPressed: () =>
                          addtoCart(widget.food, widget.selectedAddons),
                      child: const Text("Add to Cart"),
                    ))
                // ElevatedButton(
                //     onPressed: () =>
                //         addtoCart(widget.food, widget.selectedAddons),
                //     child: const Text("Add to Cart")),

                // Mybutton(
                //     text: "Add to Cart",
                //     onTap: () => addtoCart(widget.food, widget.selectedAddons)),
                ,
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),

        //back btn
        SafeArea(
          child: Container(
              margin: const EdgeInsets.only(left: 25, top: 25),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 226, 224, 224)),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
        )
      ],
    );
  }
}
