abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoding extends AuthState {}

class AuthComplete extends AuthState {
  bool secPasswod;
  AuthComplete({required this.secPasswod});
}

class AuthError extends AuthState {}
