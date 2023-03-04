import 'package:flutter/material.dart';
import 'package:portfolio_site/data.dart';
import 'package:portfolio_site/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kName,
      home: const HomeScreen(),
    );
  }
}
