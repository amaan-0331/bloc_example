part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpRequired extends SignUpEvent {
  const SignUpRequired({
    required this.user,
    required this.password,
  });

  final CurrentUser user;
  final String password;

  @override
  List<Object> get props => [user, password];
}
