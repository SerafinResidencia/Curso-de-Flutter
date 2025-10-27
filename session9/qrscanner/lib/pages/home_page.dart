import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/pages/direcciones_page.dart';
import 'package:qrscanner/pages/mapas_page.dart';
import 'package:qrscanner/providers/ui_provider.dart';
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
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorbar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(
      context,
    ); //Obtener el selectet menu opt
    final curretIndex = uiProvider.selectedMenuOpt; // Cambiar para navegar
    switch (curretIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}
