import 'package:flutter/material.dart';

class CustomNavigatorbar extends StatelessWidget {
  const CustomNavigatorbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration_outlined),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
