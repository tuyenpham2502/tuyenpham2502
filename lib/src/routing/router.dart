import "package:get/get.dart";
import 'package:learningflutter/src/features/authentications/screens/signin/signin_screen.dart';
import 'package:learningflutter/src/features/authentications/screens/signup/signup_screen.dart';
import 'package:learningflutter/src/features/core/screens/dashBoard._screen.dart';

class AppRouter {
  static final pages = [
    GetPage(name: "/", page: () => const SigninScreen()),
    GetPage(name: "/signup", page: () => const SignupScreen()),
    GetPage(name: "/dashboard", page: () => const DashBoardScreen()),
  ];
}