import 'package:armor/ds_app.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DSApp(
      home: const HomeScreen(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // TODO: What is this?
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.black),
    );
  }
}
