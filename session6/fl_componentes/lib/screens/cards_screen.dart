import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CardScreen')),
      body: ListView(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [CustomCardType1()],
      ),
    );
  }
}
