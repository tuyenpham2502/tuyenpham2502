
import 'package:flutter/material.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/default_size.dart';
import 'package:learningflutter/src/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InputTextCus(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    hintText: emailText,
                    labelText: emailText,
                    border: OutlineInputBorder(),
                  ),
                   SizedBox(height: defaultFormSize-20 ),
                  const InputPasswordCus(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: passwordText,
                    labelText: passwordText,
                    border: OutlineInputBorder(),
                  ),
                  SizedBox(height: defaultFormSize - 20 ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                    onPressed: ()=> {}, 
                    child: Text(forgotPasswordText)
                    ),
                  ),
                  SizedBox(height: defaultFormSize - 20 ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text(loginText.toUpperCase())
                    ),
                  ),
                ],
              ),
            );
  }
}
