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

  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashBoardScreen())
          : Get.to(() => const SigninScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = SignUpEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
       print("firebaseUser.value: ${firebaseUser.value}");
    } on FirebaseAuthException catch (e) {
      final ex = SignInEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = SignInEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<FirebaseAuth> signInWithGuest() async {
    try {
      await _auth.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      print('FIREBASE AUTH EXCEPTION: ${e.message}');
    } catch (_) {
      print(' EXCEPTION: ');
    }
    return _auth;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
