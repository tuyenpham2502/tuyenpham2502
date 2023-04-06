class SignInEmailAndPasswordFailure {
  final String message;

  const SignInEmailAndPasswordFailure({this.message = 'An error occurred during sign in.'});

  factory SignInEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'user-disabled':
        return SignInEmailAndPasswordFailure(message: 'Tài khoản đã bị vô hiệu hóa');
      case 'user-not-found':
        return SignInEmailAndPasswordFailure(message: 'Tài khoản không tồn tại');
      case 'wrong-password':
        return SignInEmailAndPasswordFailure(message: 'Mật khẩu không đúng');
      default:
        return SignInEmailAndPasswordFailure(message: 'Lỗi đăng nhập, vui lòng thử lại sau');
    }
  }
}
