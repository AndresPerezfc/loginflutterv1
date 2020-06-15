import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

// cinco eventos
// email changed - cambio en el email

class EmailChanged extends LoginEvent {
  final String email;

  const EmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'EmailChanged {email: $email}';
}

// password changed - cambio en la contraseña

class PasswordChanged extends LoginEvent {
  final String password;

  const PasswordChanged({@required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() => 'PasswordChanged {password: $password}';
}
// submitted - envidado

class Submitted extends LoginEvent {
  final String email;
  final String password;

  const Submitted({@required this.email, @required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() => 'Submitted {email: $email, password: $password}';
}
// loginwithGooglePresed - login con google

class LoginWithGooglePressed extends LoginEvent {}

// loginWithCredentialsPressed - login con credenciales
class LoginWithCredentialsPressed extends LoginEvent {
  final String email;
  final String password;

  const LoginWithCredentialsPressed(
      {@required this.email, @required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() => 'Submitted {email: $email, password: $password}';
}
