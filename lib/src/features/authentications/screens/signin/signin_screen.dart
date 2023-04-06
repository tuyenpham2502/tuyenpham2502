import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/default_size.dart';
import 'package:learningflutter/src/constants/image_strings.dart';
import 'package:learningflutter/src/constants/text_strings.dart';
import 'package:learningflutter/src/features/authentications/controller/signin_controller.dart';
import 'package:learningflutter/src/features/authentications/screens/signin/signin_form_widgets.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Text(
                "Login Screen",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 100),
              const LoginForm(),
              SizedBox(height: defaultFormSize -20),
              Column(
                children: [
                  SizedBox(height: defaultFormSize - 20),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(google_img),
                            width: 20,
                            height: 20,
                          ),
                          label: const Text(loginWithGoogleText))),
                  
                   SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {
                            LoginController.instance.signInWithGuest();
                          },
                          icon: const Icon(Icons.person_outline_outlined),
                          label: const Text(loginWithGuestText))),
                  SizedBox(height: defaultFormSize -20),
                  TextButton(
                    onPressed: () {
                        Get.offNamed("/signup");
                      },
                    child: Text.rich(
                      TextSpan(
                        text: dontHaveAccountText,
                        children: [
                          TextSpan(
                            text: signUpText,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ) 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
