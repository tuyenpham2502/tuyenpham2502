class SignInEmailAndPasswordFailure {
  final String message;

  SignInEmailAndPasswordFailure({this.message = 'An error occurred during sign in.'});

  factory SignInEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'invalid-email':
        return SignInEmailAndPasswordFailure(message: 'The email address is badly formatted.');
      case 'user-disabled':
        return SignInEmailAndPasswordFailure(message: 'The user account has been disabled by an administrator.');
      case 'user-not-found':
        return SignInEmailAndPasswordFailure(message: 'There is no user record corresponding to this identifier. The user may have been deleted.');
      case 'wrong-password':
        return SignInEmailAndPasswordFailure(message: 'The password is invalid or the user does not have a password.');
      default:
        return SignInEmailAndPasswordFailure(message: 'An error occurred during sign in.');
    }
  }
}
