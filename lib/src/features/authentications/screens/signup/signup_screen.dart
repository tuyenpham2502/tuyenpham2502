
import 'package:flutter/material.dart';
import 'package:learningflutter/src/constants/default_size.dart';
import 'package:learningflutter/src/features/authentications/screens/signup/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSize),
          child: Column(children: const [
            Text("Signup Screen"),
            SizedBox(height: 100),
            SignupForm(),
          ]),
        )
        ),
    );
  }
}