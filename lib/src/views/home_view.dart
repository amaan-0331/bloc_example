import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: key,
      appBar: AppBar(),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      body: Center(
        child: GestureDetector(
          onTap: () => key.currentState!.openDrawer(),
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}
