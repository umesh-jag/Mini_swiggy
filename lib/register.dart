import 'package:demoapp/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final FireBaseAuthService auth = FireBaseAuthService();

  final emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confrimpasswordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confrimpasswordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: Colors.limeAccent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    "https://lottie.host/5c9608e4-ccf7-4408-9343-f2c750f320c2/qPVNU7R7SN.json",
                    height: 200,
                    width: 200)),
            const Center(
              child: Text(
                "Hello Again",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Register with your details",
                style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _passwordcontroller,
                decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _confrimpasswordcontroller,
                decoration: InputDecoration(
                    hintText: "Confirm password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            const SizedBox(
              height: 10,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("Sign Up")),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    "Already an user,Login Now",
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

  // void signUp() async {
  //   String email = emailcontroller.text;
  //   String password = _passwordcontroller.text;

  //   User? user = await auth.signupWithEmailandPassword(email, password);

  //   if (user != null) {
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => const LoginPage()));
  //   } else {
  //     print("Some error occured");
  //   }
  // }
}
