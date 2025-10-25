import 'package:disenos/screens/basic_desing.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'basic_route',
      routes: {'basic_desing': (_) => BasicDesingScreen()},
    );
  }
}
