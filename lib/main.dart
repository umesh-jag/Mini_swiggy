import 'package:demoapp/login.dart';
import 'package:demoapp/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

// async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ChangeNotifierProvider(
    create: (context) => Resturant(),
    child: const MyApp(),
  ));
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 226, 225, 227)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
