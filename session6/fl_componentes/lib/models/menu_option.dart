import 'package:flutter/widgets.dart' show IconData, Widget;
//Show permite exponer solo ciertos componentes de Material.

class MenuOption {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  MenuOption({
    //this = indica posicion, required = Indica que es obligatorio su existencia.
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
