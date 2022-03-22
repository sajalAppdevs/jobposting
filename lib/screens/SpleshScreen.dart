import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobposting/main.dart';
import 'package:jobposting/screens/SignupScreen.dart';

class spleshScreen extends StatefulWidget {
  const spleshScreen({Key? key}) : super(key: key);

  @override
  State<spleshScreen> createState() => _spleshScreenState();
}

class _spleshScreenState extends State<spleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SignupScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191720),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("Assets/images/logoheart.jpg")
            Icon(
              Icons.emoji_emotions,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please wait processing....",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            )
          ],
        )
      ]),
    );
  }
}
