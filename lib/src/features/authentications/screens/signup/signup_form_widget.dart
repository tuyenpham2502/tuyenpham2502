
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/text_strings.dart';
import 'package:learningflutter/src/features/authentications/controller/signup_controller.dart';

class SignupForm extends StatelessWidget {
    const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      InputTextCus(
        controller: controller.fullName,
        prefixIcon: Icon(Icons.person_outline_outlined),
        hintText: fullNameText,
        labelText: fullNameText,
        border: OutlineInputBorder(),
      ),
      const SizedBox(height: 20),
      InputTextCus(
        controller: controller.email,
        prefixIcon: Icon(Icons.email_outlined),
        hintText: emailText,
        labelText: emailText,
        border: OutlineInputBorder(),
      ),
      const SizedBox(height: 20),
      InputTextCus(
        controller: controller.phoneNumber,
        prefixIcon: Icon(Icons.phone_outlined),
        hintText: phoneText,
        labelText: phoneText,
        border: OutlineInputBorder(),
      ),
      const SizedBox(height: 20),
      InputPasswordCus(
        controller: controller.password,
        prefixIcon: Icon(Icons.lock_outline),
        hintText: passwordText,
        labelText: passwordText,
        border: OutlineInputBorder(),
      ),
      const SizedBox(height: 20),
      InputPasswordCus(
        controller: controller.confirmPassword,
        prefixIcon: Icon(Icons.lock_outline),
        hintText: confirmPasswordText,
        labelText: confirmPasswordText,
        border: OutlineInputBorder(),
      ),
      const SizedBox(height: 20), 
      SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {
                  SignUpController.instance.registerUser(controller.email.text, controller.password.text);
                }
              },
              child: Text(signUpText.toUpperCase())
          ),
        ),
    ]));
  }
}