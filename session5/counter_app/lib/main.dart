import 'package:flutter/material.dart';

import 'package:counter_app/screens/counter_screen.dart';
//import 'package:counter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp()); //Importación de material-dart
}

class MyApp extends StatelessWidget {
  //Creación del primer widget Padre
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //widget hijo.
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //quitar etiqueta de debug
      //home: HomeScreen(),
      home: CounterScreen(),
    ); //Widget hijo importado desde la segunda pantalla.
  }
}
