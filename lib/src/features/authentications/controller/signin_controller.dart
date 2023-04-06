import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/respository/authentication-respository/authentication-respository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  Future<String?> signInWithEmailAndPassword(String email,String password) async {
    String? signIn = await AuthenticationRepository.instance.signInWithEmailAndPassword(email, password);
   if(signIn != null){
    Get.showSnackbar(GetSnackBar(
      message: signIn,
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
    ));
   }
   
    return signIn;
  }
  
  Future<void> signInWithGuest() async {
    await AuthenticationRepository.instance.signInWithGuest();
  }
}
