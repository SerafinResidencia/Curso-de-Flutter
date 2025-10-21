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
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'assets/img/1.jpeg'),
          CustomCardType2(imageUrl: 'assets/img/2.jpg'),
          CustomCardType2(
            name: "Un hermoso paisaje",
            imageUrl: 'assets/img/3.jpg',
          ),
        ],
      ),
    );
  }
}
