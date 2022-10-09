import 'package:router/router.dart';
import 'package:web_portal/screens/demo_screens.dart';
// [Modules]
import 'package:starter_app/definition.dart' as product_starter_app;
import 'package:netflix_clone/definition.dart' as product_netflix_clone;
// ======================

final routesDefinition = RootRouterDefinition(home: const Page1Screen())
    .registerModuleDefinition(product_starter_app.definition)
    .registerModuleDefinition(product_netflix_clone.definition)
    .definition;
