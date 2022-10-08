import 'package:armor/ds_app.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart';
import 'package:web_portal/routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DSApp.router(
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: routes,
  );
}
