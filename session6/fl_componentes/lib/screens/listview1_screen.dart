import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Doom Eternal',
    'Super Smash',
    'Borderlands',
  ];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Tipo 1')),

      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: Icon(Icons.arrow_right_sharp),
            ),
          ),
        ],

        //Leading: su función es contener iconos
        //children: [ListTile(leading: Icon(Icons.), title: Text('Hello World'))],
      ),
    );
  }
}
