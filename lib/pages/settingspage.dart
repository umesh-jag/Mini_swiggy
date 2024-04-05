import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Settings")),
      ),
      body: const Center(
        child: Column(
          children: [
            Text("👻", style: TextStyle(fontSize: 60)),
            Text(
              "Oops Some thing is wrong ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
