import 'package:design_system/design_system.dart';
import 'package:router/router.dart';
import 'package:flutter/material.dart' hide Text;

class HomeScreen extends StatelessWidget {
  static String routeName = "";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Netflix project!',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text(
                'Go the home of the website',
                selectableText: false,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/netflix_clone/options'),
              child: const Text(
                'Go the OPTIONS of the NETFLIX project',
                selectableText: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
