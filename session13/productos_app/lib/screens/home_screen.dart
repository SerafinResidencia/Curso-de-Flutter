import 'package:flutter/material.dart';
import 'package:productos_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), centerTitle: true),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'product'),
          child: ProductCard(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
