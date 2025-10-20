import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image15.png',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ],
      ),
    );
  }
}
