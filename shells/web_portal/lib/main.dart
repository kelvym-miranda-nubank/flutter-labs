import 'package:flutter/material.dart';
import 'package:router/router.dart';
import 'package:starter_app/definition.dart' as product_starter_app;

void main() => runApp(App());

var routes = <GoRoute>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const Page1Screen(),
    routes: <GoRoute>[
      GoRoute(
        path: 'page2',
        builder: (BuildContext context, GoRouterState state) =>
            const Page2Screen(),
      ),
      // Defining the routes of a product
      GoRoute(
        path: 'starter_app',
        builder: (BuildContext context, GoRouterState state) =>
            product_starter_app.definition["/"]!["screen"] as Widget,
      )
    ],
  ),
];

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
        title: title,
      );

  final GoRouter _router = GoRouter(
    routes: routes,
  );
}

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(App.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/page2'),
                child: const Text('Go to page 2'),
              ),
              ElevatedButton(
                onPressed: () => context.go('/starter_app'),
                child: const Text('Go to starter_app'),
              ),
            ],
          ),
        ),
      );
}

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(App.title)),
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
    );
  }
}
