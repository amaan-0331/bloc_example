part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationUserChange extends AuthenticationEvent {
  const AuthenticationUserChange(this.user);

  final User? user;
}
