import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:user_repository/user_repository.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc({
    required UserRepository userRepository,
  })  : repository = userRepository,
        super(const CurrentUserState.loading()) {
    on<GetCurrentUser>((event, emit) async {
      try {
        final currentUser = await userRepository.getCurrentUser(event.userId);

        emit(CurrentUserState.success(currentUser));
      } catch (e) {
        log(e.toString());
        emit(const CurrentUserState.failure());
      }
    });
  }
  final UserRepository repository;
}
