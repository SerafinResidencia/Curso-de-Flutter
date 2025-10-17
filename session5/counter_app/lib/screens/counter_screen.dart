//class HomeScreen {} // Esto es una clase.

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //Al extenderse la clase se convierte en widget.
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Sirve para identificación dentro de un contexto.
  int counter = 0; //Aqui se definen las propiedades
  void increase() {
    //y métodos.
    counter++;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize40 = TextStyle(fontSize: 40);
    //Build context - Permite construir la navegación
    //y widgets que contenga.

    //int counter = 15; Aqui se defininen las variables.

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10,
      ), //Crea una Barra en la superior de la pantalla.
      backgroundColor: Color.fromARGB(255, 138, 159, 174),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador', style: fontSize40),
            Text('$counter', style: fontSize40),
          ],
        ),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Centrar Botón.
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        restartFn: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;
  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restartFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Genera espacios entre
      //los iconos de Row.
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add_circle_outline_sharp),
          onPressed: () => increaseFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt_rounded),
          onPressed: () => restartFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
