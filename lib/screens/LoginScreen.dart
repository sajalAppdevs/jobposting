import 'package:flutter/material.dart';
import 'package:jobposting/screens/job_listing.dart';
import 'package:jobposting/screens/SignupScreen.dart';

import '../appbuttons.dart';
import '../textField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff191720),
      body: Padding(
        padding: EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Let’s sign you in",
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          Text(
            "Welcome back\nyou’ve been missed !",
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          textfield(Placeholder: "Enter your email address"),
          textfield(Placeholder: "Enter your password"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account ?",
                style: TextStyle(fontSize: 15, color: Color(0xff8F8F9E)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignupScreen()));
                },
                child: Text("Register",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          GestureDetector(
            onTap: () {
              onpress(context);
            },
            child: appbuttons(
                label: "Sign in",
                onPress: () {
                  onpress(context);
                }),
          )
        ]),
      ),
    );
  }
}

onpress(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => listjobs()));
}
