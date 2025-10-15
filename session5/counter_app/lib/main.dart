import 'package:flutter/material.dart';

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
      home: Center(child: Text('Hola Mundo')),
    ); //Widget hijo.
  }
}
