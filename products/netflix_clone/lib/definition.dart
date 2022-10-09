import 'package:netflix_clone/screens/home/home_screen.dart';
import 'package:netflix_clone/screens/options/options_screen.dart';

var definition = {
  "name": "netflix_clone",
  "routes": {
    "/": {
      "component": const HomeScreen(),
      "path": "",
    },
    "/options": {
      "component": const OptionsScreen(),
      "path": "/options",
    }
  }
};
