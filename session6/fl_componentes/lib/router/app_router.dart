import 'package:flutter/material.dart';

import 'package:fl_componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(settings) {
    print(settings);

    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
