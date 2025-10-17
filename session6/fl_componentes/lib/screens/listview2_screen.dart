import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Doom Eternal',
    'Super Smash',
    'Borderlands',
  ];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Tipo 1')),

      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_right_sharp),
        ),
        separatorBuilder: (_, __) => const Divider(),
        //Leading: su función es contener iconos
        //children: [ListTile(leading: Icon(Icons.), title: Text('Hello World'))],
      ),
    );
  }
}
