
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/comon_widgets/dialog_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/comon_widgets/loading_animation_cus.dart';
import 'package:learningflutter/src/constants/default_size.dart';
import 'package:learningflutter/src/constants/text_strings.dart';
import 'package:learningflutter/src/constants/validate_types.dart';
import 'package:learningflutter/src/features/authentications/controller/signin_controller.dart';
import 'package:learningflutter/src/features/authentications/controller/signup_controller.dart';
import 'package:learningflutter/src/respository/authentication-respository/exception/signin_email_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final controller = Get.put(LoginController());
    return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   InputTextCus(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return emailRequiredText;
                      }
                      if (!value.isValidEmail) {
                        return emailInvalidText;
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.person_outline_outlined),
                    hintText: emailText,
                    labelText: emailText,
                    border: const OutlineInputBorder(),
                    controller: controller.email,
                  ),
                   SizedBox(height: defaultFormSize - 20),
                   InputPasswordCus(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return passwordRequiredText;
                      }
                      if (value.isValidPassword) {
                        return passwordInvalidText;
                      }
                      return null;
                    },
                    controller: controller.password,
                    prefixIcon: const Icon(Icons.lock_outline),
                    hintText: passwordText,
                    labelText: passwordText,
                    border: const OutlineInputBorder(),
                  ),
                  SizedBox(height: defaultFormSize - 20 ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                    onPressed: ()=> {}, 
                    child: const Text(forgotPasswordText)
                    ),
                  ),
                  SizedBox(height: defaultFormSize - 20 ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if(_formKey.currentState!.validate()){
                        LoginController.instance.signInWithEmailAndPassword(controller.email.text, controller.password.text);
                        } 
                      }, 
                      child: Text(loginText.toUpperCase())
                    ),
                  ),
                ],
              ),
            );
  } 
}
