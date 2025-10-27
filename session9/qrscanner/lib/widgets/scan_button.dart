import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.filter_center_focus),
      onPressed: () {
        // Abrimos una nueva pantalla para escanear
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: Text("Escanear QR")),
              body: MobileScanner(
                allowDuplicates: false,
                onDetect: (barcode, args) {
                  final String code = barcode.rawValue ?? "---";
                  print('Código detectado: $code');

                  // Cerramos la pantalla después de leer el código
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
