import 'package:demoapp/components/quantity_selector.dart';
import 'package:demoapp/models/Cartitem.dart';
import 'package:demoapp/models/resturant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, resturant, child) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.black38),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //food image
                  ClipRRect(
                      child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  )),

                  //name & price
                  Column(
                    children: [
                      Text(cartItem.food.name),
                      Text('\$${cartItem.food.price}')
                    ],
                  ),
                  const Spacer(),

                  //increment and decre quantity
                  QuantitySelector(
                      food: cartItem.food,
                      onDecrement: () {
                        resturant.removeFromCart(cartItem);
                      },
                      onIncrement: () {
                        resturant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      },
                      quantity: cartItem.quantity)
                ],
              ),
            ),

            //add ons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons
                    .map((addon) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: Row(
                              children: [
                                //add on name
                                Text(addon.name),
                                Text('(\$${addon.price})'),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
