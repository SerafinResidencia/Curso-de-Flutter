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
          CustomCardType2(
            imageUrl:
                'https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2103',
          ),
          CustomCardType2(
            imageUrl:
                'https://www.muyinteresante.com/wp-content/uploads/sites/5/2023/09/14/65031bd0e7138.jpeg?resize=1024,683',
          ),
          CustomCardType2(
            name: "Un hermoso paisaje",
            imageUrl:
                'https://121clicks.com/wp-content/uploads/2024/09/best-top-travel-landscape-photography-09.jpg',
          ),
        ],
      ),
    );
  }
}
