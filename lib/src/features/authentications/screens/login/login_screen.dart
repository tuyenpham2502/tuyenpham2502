import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learningflutter/src/comon_widgets/input_password_cus.dart';
import 'package:learningflutter/src/comon_widgets/input_text_cus.dart';
import 'package:learningflutter/src/constants/default_size.dart';
import 'package:learningflutter/src/constants/image_strings.dart';
import 'package:learningflutter/src/constants/text_strings.dart';
import 'package:learningflutter/src/features/authentications/screens/login/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  const Text(or),
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
                  SizedBox(height: defaultFormSize -20),
                  TextButton(
                    onPressed: () {  },
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
