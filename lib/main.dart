import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';
import 'package:nasa_space_app2/home_screen.dart';

void main() {
  runApp(const NasaSpaceApp());
}

class NasaSpaceApp extends StatelessWidget {
  const NasaSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nasa Space App',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}