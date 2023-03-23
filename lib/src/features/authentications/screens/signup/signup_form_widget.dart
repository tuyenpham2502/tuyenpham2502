
import 'package:flutter/material.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
      InputTextCus(
        prefixIcon: Icon(Icons.person_outline_outlined),
        hintText: fullNameText,
        labelText: fullNameText,
        border: OutlineInputBorder(),
      ),
      SizedBox(height: 20),
      InputTextCus(
        prefixIcon: Icon(Icons.email_outlined),
        hintText: emailText,
        labelText: emailText,
        border: OutlineInputBorder(),
      ),
      SizedBox(height: 20),
      InputTextCus(
        prefixIcon: Icon(Icons.phone_outlined),
        hintText: phoneText,
        labelText: phoneText,
        border: OutlineInputBorder(),
      ),
      SizedBox(height: 20),
      InputPasswordCus(
        prefixIcon: Icon(Icons.lock_outline),
        hintText: passwordText,
        labelText: passwordText,
        border: OutlineInputBorder(),
      ),
      SizedBox(height: 20),
      InputPasswordCus(
        prefixIcon: Icon(Icons.lock_outline),
        hintText: confirmPasswordText,
        labelText: confirmPasswordText,
        border: OutlineInputBorder(),
      ),

    ]));
  }
}