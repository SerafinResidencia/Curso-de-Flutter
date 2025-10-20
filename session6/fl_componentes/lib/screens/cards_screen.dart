import 'package:fl_componentes/models/theme/app_theme.dart';
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
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.phone_bluetooth_speaker,
                    color: AppTheme.primary,
                  ),
                  title: Text('First Title'),
                  subtitle: Text(
                    'In sint proident esse anim est aute aliquip mollit laboris officia aliqua cupidatat laborum.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
