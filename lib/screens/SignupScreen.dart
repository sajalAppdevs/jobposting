import 'package:flutter/material.dart';
import 'package:jobposting/screens/LoginScreen.dart';
import '../appbuttons.dart';
import '../textField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff191720),
      body: Padding(
        padding: EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Let’s sign you up",
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          Text(
            "Welcome\nJoin the community!",
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          textfield(Placeholder: "Enter your full name"),
          textfield(Placeholder: "Enter your email address"),
          textfield(Placeholder: "Enter your password"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account ? ",
                style: TextStyle(fontSize: 15, color: Color(0xff8F8F9E)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Text("Signup",
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
                label: "SignUp",
                onPress: () {
                  onpress(context);
                }),
          ),
        ]),
      ),
    );
  }
}

onpress(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
}
