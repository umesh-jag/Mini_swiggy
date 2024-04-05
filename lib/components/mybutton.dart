import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const Mybutton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Color.fromARGB(221, 224, 218, 218),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        width: double.infinity,
        alignment: Alignment.center,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'halter'),
        )));
  }
}
