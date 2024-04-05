import 'package:demoapp/login.dart';
import 'package:demoapp/pages/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        children: [
          Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Lottie.network(
                    "https://lottie.host/fa501e38-9f83-420b-9a8f-de4c8a0ddd29/mJFi5k8Mnl.json",
                    height: 300,
                    width: 280),
              ),

              //home

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(context);
                  },
                  child: const Row(
                    children: [
                      Text(
                        "Home ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.home)
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),

              //settings
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SettingPage()));
                  },
                  child: const Row(
                    children: [
                      Text("Setting",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Icon(Icons.settings)
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),

              //logout

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  child: const Row(
                    children: [
                      Text("Logout",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Icon(Icons.logout_outlined)
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
