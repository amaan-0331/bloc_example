part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailure extends SignInState {
  const SignInFailure({this.message});

  final String? message;
}

class SignInProcess extends SignInState {}
