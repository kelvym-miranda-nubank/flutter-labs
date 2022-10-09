import 'package:design_system/design_system.dart';
import 'package:router/router.dart';
import 'package:flutter/material.dart' hide Text;

class OptionsScreen extends StatelessWidget {
  static String routeName = "";

  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Options of the project!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/netflix_clone'),
              child: const Text(
                'Go the home of THIS app',
                selectableText: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
