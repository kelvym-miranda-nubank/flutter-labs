import 'package:flutter/material.dart';
import 'package:starter_app/definition.dart' as product_starter_app;
import 'package:web_portal/screens/demo_screens.dart';
import 'package:router/router.dart';

// TODO: Fix this, convert to a better way
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
