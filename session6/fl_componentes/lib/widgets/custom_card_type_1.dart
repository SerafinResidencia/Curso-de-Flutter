import 'package:fl_componentes/models/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.phone_bluetooth_speaker,
              color: AppTheme.primary,
            ),
            title: Text('First Title'),
            subtitle: Text(
              'In sint proident esse anim est aute aliquip mollit laboris officia aliqua cupidatat laborum.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
