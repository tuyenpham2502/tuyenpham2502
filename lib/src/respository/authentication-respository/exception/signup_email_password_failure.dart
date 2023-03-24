class SignUpEmailAndPasswordFailure {
  final String message;

  const SignUpEmailAndPasswordFailure([this.message = 'An error occurred during sign up.']);

  factory SignUpEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'email-already-in-use':
        return const SignUpEmailAndPasswordFailure('The email address is already in use by another account.');
      case 'invalid-email':
        return const SignUpEmailAndPasswordFailure('The email address is badly formatted.');
      case 'operation-not-allowed':
        return const SignUpEmailAndPasswordFailure('Email & Password accounts are not enabled.');
      case 'weak-password':
        return const SignUpEmailAndPasswordFailure('The password must be 6 characters long or more.');
      default:
        return const SignUpEmailAndPasswordFailure();
    }
  }

}