import 'package:demoapp/components/cart_tile.dart';
import 'package:demoapp/models/resturant.dart';
import 'package:demoapp/pages/paymentpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, resturant, child) {
        //cart
        final userCart = resturant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Cart")),
            backgroundColor: Colors.transparent,
            actions: [
              //clear cart
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Are You Sure"),
                              actions: [
                                //cancel btn
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("Cancel")),

                                //yes  btn
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      resturant.clearCart();
                                    },
                                    child: const Text("Yes"))
                              ],
                            ));
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              //list of cart
              Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = userCart[index];
              
                      //return cart tile ui
              
                      return MyCartTile(cartItem: cartItem);
                    }),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => const CreditCard()));
              //     },
              //     child: const Text("Go To Checkout")),
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreditCard()));
                    },
                    child: const Text("Go to Checkout"),
                  )),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        );
      },
    );
  }
}
