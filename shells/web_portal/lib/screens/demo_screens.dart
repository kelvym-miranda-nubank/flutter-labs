import 'package:flutter/material.dart';
import 'package:router/router.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  static const String title = 'DevSoutinho App';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.red,
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text(Page1Screen.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/starter_app'),
                child: const Text('Go to Flutter starter_app'),
              ),
              ElevatedButton(
                onPressed: () => context.go('/netflix_clone'),
                child: const Text('Go to Netflix Clone'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.red,
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text(Page1Screen.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Go back to home page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
