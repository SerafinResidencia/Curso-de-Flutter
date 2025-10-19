import 'package:fl_componentes/screens/home_screen.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: Listview2Screen(),
      initialRoute: 'home_screen',
      routes: {
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
        'home': (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
