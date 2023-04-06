import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/respository/authentication-respository/authentication-respository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final fullName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  Future<void> registerUser(String email, String password) async {
  await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}