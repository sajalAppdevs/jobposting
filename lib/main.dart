import 'package:flutter/material.dart';
import 'package:jobposting/screens/SignupScreen.dart';
import 'package:jobposting/screens/SpleshScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: spleshScreen(),
    );
  }
}
