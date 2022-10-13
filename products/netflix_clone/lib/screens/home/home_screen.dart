import 'package:design_system/design_system.dart';
import 'package:netflix_clone/patterns/patterns.dart';
import 'package:flutter/material.dart' hide Text;

class HomeScreen extends StatelessWidget {
  static String routeName = "";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(context.responsive.screenWidth.value, 50.0),
        child: CustomAppBar(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
        // ignore: avoid_print
        onPressed: () => print("Cast to your TV!"),
      ),
      body: const _ScreenBody(),
    );
  }
}

class _ScreenBody extends StatelessWidget {
  const _ScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Netflix project!',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
