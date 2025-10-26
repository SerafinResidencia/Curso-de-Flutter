import 'package:flutter/material.dart';

class CustomBottoNavigation extends StatelessWidget {
  const CustomBottoNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      selectedItemColor: const Color.fromARGB(255, 233, 30, 189),
      backgroundColor: Color.fromRGBO(208, 1, 255, 1),
      unselectedItemColor: Color.fromARGB(116, 247, 46, 224),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendario',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_sharp),
          label: 'Gráfica',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_sharp),
          label: 'Usuarios',
        ),
      ],
    );
  }
}
