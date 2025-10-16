//class HomeScreen {} // Esto es una clase.

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Al extenderse de un tipo de wigdet cambia.
  const HomeScreen({
    super.key,
  }); //Sirve para identificación dentro de un contexto.

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize40 = const TextStyle(fontSize: 40);
    //Build context - Permite construir la navegación
    //y widgets que contenga.
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        elevation: 10,
      ), //Crea una Barra en la superior de la pantalla.
      backgroundColor: Color.fromARGB(255, 138, 159, 174),
      body: Center(
        child: Column(
          children: [
            Text('Contador', style: fontSize40),
            Text('0', style: fontSize40),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, Centrar Botón.
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle_outline_sharp),
        onPressed: () {
          print('Hola');
        },
      ),
    );
  }
}
