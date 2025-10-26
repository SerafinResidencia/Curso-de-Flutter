import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.abc_rounded,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.emoji_transportation_sharp,
              color: Colors.cyanAccent,
              text: 'Transporte',
            ),
          ],
        ),

        TableRow(
          children: [
            _SingleCard(
              color: const Color.fromARGB(255, 33, 243, 82),
              icon: Icons.car_rental_rounded,
              text: 'Automovil',
            ),
            _SingleCard(
              icon: Icons.mail_lock_outlined,
              color: const Color.fromARGB(255, 255, 166, 24),
              text: 'Email',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: const Color.fromARGB(255, 138, 33, 243),
              icon: Icons.flight,
              text: 'Vuelos',
            ),
            _SingleCard(
              icon: Icons.house_sharp,
              color: const Color.fromARGB(255, 24, 28, 255),
              text: 'Casas',
            ),
          ],
        ),

        TableRow(
          children: [
            _SingleCard(
              color: const Color.fromARGB(255, 194, 33, 243),
              icon: Icons.shop_sharp,
              text: 'Movies',
            ),
            _SingleCard(
              icon: Icons.shopping_cart_checkout_rounded,
              color: const Color.fromARGB(255, 255, 24, 128),
              text: 'Compras',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromARGB(42, 106, 1, 235),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    );
  }
}
