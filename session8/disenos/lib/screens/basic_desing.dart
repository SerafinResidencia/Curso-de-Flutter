import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Imagen
        children: [
          Image(image: AssetImage('assets/a.png')),
          //Titulo
          Title(),
          //Button Section
          ButtonSecction(),
          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.Excepteur magna laboris labore enim ea occaecat.',
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Un paisaje hermoso y estético',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'xcepteur magna laboris labore enim ea occaecat.Excepteur magna la',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star_border_outlined, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSecction extends StatelessWidget {
  const ButtonSecction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.phone, text: 'Call'),
          CustomButton(icon: Icons.map_outlined, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue[300], size: 30),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
