import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:learningflutter/src/features/authentications/screens/signin/signin_screen.dart';
import 'package:learningflutter/src/features/authentications/screens/signup/signup_screen.dart';
import 'package:learningflutter/src/features/core/screens/dashBoard._screen.dart';
import 'package:learningflutter/src/respository/authentication-respository/exception/signin_email_password.dart';
import 'package:learningflutter/src/respository/authentication-respository/exception/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.authStateChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const SigninScreen())
        : Get.offAll(() => const DashBoardScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      print("firebaseUser.value: ${firebaseUser.value}");
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashBoardScreen())
          : Get.to(() => const SigninScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION: ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpEmailAndPasswordFailure();
      print(' EXCEPTION: ${ex.message}');
      throw ex;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignInEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION: ${ex.message}');
    } catch (_) {
      final ex = SignInEmailAndPasswordFailure();
      print(' EXCEPTION: ${ex.message}');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
