import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learningflutter/src/features/authentications/screens/signin/signin_screen.dart';
import 'package:learningflutter/src/features/authentications/screens/signup/signup_screen.dart';
import 'package:learningflutter/src/respository/authentication-respository/authentication-respository.dart';
import 'package:learningflutter/src/untils/themes/themes.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(((value) => Get.put(AuthenticationRepository())));
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return GetMaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          home: const SignupScreen(),
        );
      }
    );
  }
}



