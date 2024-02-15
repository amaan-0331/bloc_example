part of 'current_user_bloc.dart';

enum CurrentUserStatus { success, loading, failure }

@immutable
class CurrentUserState extends Equatable {
  const CurrentUserState._({
    this.status = CurrentUserStatus.loading,
    this.user,
  });

  const CurrentUserState.loading() : this._();
  const CurrentUserState.success(CurrentUser user)
      : this._(status: CurrentUserStatus.success, user: user);
  const CurrentUserState.failure() : this._(status: CurrentUserStatus.failure);

  final CurrentUserStatus status;
  final CurrentUser? user;

  @override
  List<Object?> get props => [user, status];
}
