import 'package:armor/ds_app.dart';
import 'package:flutter/material.dart';
import 'package:web_portal/routes.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DSApp.router(
      routerConfig: routesDefinition,
    );
  }
}
