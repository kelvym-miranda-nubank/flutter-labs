import 'package:flutter/material.dart';

class DSApp extends StatelessWidget {
  final Widget? home;

  const DSApp({
    super.key,
    this.home,
  });

  static final ThemeData _defaultTheme = ThemeData(
    primarySwatch: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product - starter_app',
      theme: _defaultTheme,
      home: home,
    );
  }

  static MaterialApp router({RouterConfig<Object>? routerConfig}) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      theme: _defaultTheme,
    );
  }
}
