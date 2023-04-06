
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/text_strings.dart';
import 'package:learningflutter/src/constants/validate_types.dart';
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
        validator: (value) {
          if (value!.isEmpty) {
            return fullNameRequiredText;
          }
          return null;
        },
        controller: controller.fullName,
        prefixIcon: const Icon(Icons.person_outline_outlined),
        hintText: fullNameText,
        labelText: fullNameText,
        border: const OutlineInputBorder(),
      ),
      const SizedBox(height: 20),
          InputTextCus(
            validator: (value) {
              if (value!.isEmpty) {
                return phoneRequiredText;
              }
              if (value.isValidPhoneNumber) {
                return phoneInvalidText;
              }
              return null;
            },
            controller: controller.phoneNumber,
            prefixIcon: const Icon(Icons.phone_outlined),
            hintText: phoneText,
            labelText: phoneText,
            border: const OutlineInputBorder(),
          ),
      const SizedBox(height: 20),
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
        controller: controller.email,
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: emailText,
        labelText: emailText,
        border: const OutlineInputBorder(),
      ),
      
      const SizedBox(height: 20),
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
      const SizedBox(height: 20),
      InputPasswordCus(
        validator: (value) {
          if (value!.isEmpty) {
            return confirmPasswordRequiredText;
          }
          if (value != controller.password.text) {
            return confirmPasswordInvalidText;
          }
          return null;
        },
        controller: controller.confirmPassword,
        prefixIcon: const Icon(Icons.lock_outline),
        hintText: confirmPasswordText,
        labelText: confirmPasswordText,
        border: const OutlineInputBorder(),
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