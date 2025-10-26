import 'package:flutter/material.dart';
import 'package:qrscanner/widgets/custom_navigatorbar.dart';
import 'package:qrscanner/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever_outlined),
          ),
        ],
      ),
      body: Center(child: Text('Home Page')),
      bottomNavigationBar: CustomNavigatorbar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
