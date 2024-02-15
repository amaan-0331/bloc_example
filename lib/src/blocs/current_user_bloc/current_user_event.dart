part of 'current_user_bloc.dart';

@immutable
sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentUser extends CurrentUserEvent {
  const GetCurrentUser({required this.userId});

  final String userId;

  @override
  List<Object> get props => [userId];
}
