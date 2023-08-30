import 'package:agha_steel/route.dart';
import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:agha_steel/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agha Steel',
      theme: ThemeData(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
