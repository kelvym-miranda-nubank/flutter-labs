library router;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export 'package:go_router/go_router.dart';
export 'package:url_strategy/url_strategy.dart';

class _RouterRoute {
  final String path;
  final Widget screen;
  final List<_RouterRoute> routes;

  _RouterRoute({
    required this.path,
    required this.screen,
    required this.routes,
  });
}

class _ModuleDefinition {
  final String name;
  final Map<String, dynamic> routesMap;
  final _routes = <_RouterRoute>[];

  _ModuleDefinition({
    required this.name,
    required this.routesMap,
  }) {
    if (routesMap.isEmpty) {
      throw Exception("Module '$name' has no routes defined.");
    }

    if (routesMap["/"] == null) {
      throw Exception("Module '$name' has no root route defined.");
    }
  }

  _RouterRoute _toRouterRoute(MapEntry<String, dynamic> entry) {
    var path = entry.value["path"];
    var screen = entry.value["component"];
    var routes = entry.value["routes"];
    print(routes);

    var routePath = "/$name$path";

    return _RouterRoute(
      path: routePath,
      screen: screen,
      routes: [],
    );
  }

  List<_RouterRoute> get routes {
    return routesMap.entries.map(_toRouterRoute).toList();
  }
}

class RootRouterDefinition {
  final Widget home;
  final _routes = <_RouterRoute>[];

  RootRouterDefinition({
    required this.home,
  }) {
    _routes.add(_RouterRoute(
      path: "/",
      screen: home,
      routes: [],
    ));
  }

  registerModuleDefinition(moduleDefinition) {
    var definition = _ModuleDefinition(
      name: moduleDefinition["name"],
      routesMap: moduleDefinition["routes"],
    );

    _routes.addAll(definition.routes);

    return this;
  }

  // TODO: add this in the above map
  RouteBase _toGoRoute(_RouterRoute route) {
    return GoRoute(
      path: route.path,
      builder: (BuildContext context, GoRouterState state) => route.screen,
      routes: route.routes.map(_toGoRoute).toList(),
    );
  }

  List<RouteBase> get routes => _routes.map(_toGoRoute).toList();

  get definition => GoRouter(
        routes: routes,
      );
}
