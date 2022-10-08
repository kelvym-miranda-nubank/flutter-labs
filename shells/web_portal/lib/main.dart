import 'package:armor/ds_app.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart' as router;
import 'package:web_portal/routes.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  router.setPathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DSApp.router(
      routerConfig: routesDefinition,
    );
  }
}
