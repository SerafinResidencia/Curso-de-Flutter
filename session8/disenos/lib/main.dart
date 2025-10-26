import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_desing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home_route',
      routes: {
        'basic_route': (_) => BasicDesingScreen(),
        'scroll_route': (_) => ScrollScreen(),
        'home_route': (_) => HomeScreen(),
      },
    );
  }
}
