import 'package:demoapp/pages/cart_page.dart';
import 'package:flutter/material.dart';

class Mysilverbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const Mysilverbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      title: const Center(child: Text("Sun Set Dive 🌅")),
      actions: [
        //cart page
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartPage()));
          },
          child: const Icon(
            Icons.shopping_cart_checkout,
            size: 30,
          ),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.primary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
