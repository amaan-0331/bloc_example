import 'package:bloc_example/src/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:bloc_example/src/theme.dart';
import 'package:bloc_example/src/views/authentication/welcome_view.dart';
import 'package:bloc_example/src/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MainApp extends StatelessWidget {
  const MainApp(this.userRepository, {super.key});
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => AuthenticationBloc(userRepository: userRepository),
        ),
      ],
      child: MaterialApp(
        darkTheme: AppTheme.darkTheme(),
        theme: AppTheme.lightTheme(),
        themeMode: ThemeMode.light,
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state.status == AuthenticationStatus.authenticated) {
              return const HomeView();
            } else {
              return const WelcomeView();
            }
          },
        ),
      ),
    );
  }
}
