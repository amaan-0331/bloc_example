// ignore_for_file: strict_raw_type

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverForLogging extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvent -- bloc: ${bloc.runtimeType}, event: ${event.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange -- bloc: ${bloc.runtimeType}, change: ${change.runtimeType}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('onCreate -- bloc: ${bloc.runtimeType}, transition: ${transition.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('onCreate -- bloc: ${bloc.runtimeType}, error: ${error.runtimeType}, stackTrace: ${stackTrace.runtimeType}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('onCreate -- bloc: ${bloc.runtimeType}');
  }
}
