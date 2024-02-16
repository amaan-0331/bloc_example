import 'package:bloc_example/src/views/authentication/sign_in_view.dart';
import 'package:bloc_example/src/views/authentication/sign_up_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: kToolbarHeight),
            const TabBar(
              tabs: [
                Tab(text: 'Sign In'),
                Tab(text: 'Sign Up'),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  SignInView(),
                  SignUpView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
