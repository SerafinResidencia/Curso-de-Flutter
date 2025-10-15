//class HomeScreen {} // Esto es una clase.

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Al extenderse de un tipo de wigdet cambia.
  const HomeScreen({
    super.key,
  }); //Sirve para identificaci+on dentro de un contexto.

  @override
  Widget build(BuildContext context) {
    return const /*Se agrga const 
    por que ni este wigdet Padre ni 
    sus hijos cambian de estado*/ Center(child: Text('Home Screen'));
  }
} // Esto es un widget
