// import 'package:firebase_core/firebase_core.dart';
import 'package:demoapp/pages/homepage.dart';
import 'package:demoapp/register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // final FireBaseAuthService auth = FireBaseAuthService();

  final emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    _passwordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          //key: _formkey,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Swizze🎧👻",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Center(
                child: Lottie.network(
                    "https://lottie.host/5cc754c5-80f0-42ee-8287-9e3c576fe98b/swu7oMkcEy.json",
                    repeat: false,
                    height: 200,
                    width: 200)),
            const Center(
              child: Text(
                "HEY BUDDY 💕😉",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Welcome Back,You've Been Missed!",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter the details';
                  }
                  return null;
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the Password';
                    }
                    return null;
                  },
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                )),
            const SizedBox(
              height: 20,
            ),
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
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Sign In"),
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    "Not an user? register here",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // void signIn() async {
  //   String email = emailcontroller.text;
  //   String password = _passwordcontroller.text;

  //   User? user = await auth.signInWithEmailandPassword(email, password);

  //   if (user != null) {
  //     // ignore: use_build_context_synchronously
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => const HomePage()));
  //   } else {
  //     print("Some Error occour");
  //   }
  // }
}
