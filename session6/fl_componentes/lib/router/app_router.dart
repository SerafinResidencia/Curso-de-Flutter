import 'package:flutter/material.dart';

import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'List View 1',
      screen: Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt_sharp,
      name: 'List View 2',
      screen: Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.campaign,
      name: 'Alerts',
      screen: AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_membership,
      name: 'Cards',
      screen: CardsScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle Avatar',
      screen: AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.animation_outlined,
      name: 'Animated Container',
      screen: AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_sharp,
      name: 'Text Inputs',
      screen: InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slow_motion_video_sharp,
      name: 'Slider & Checks',
      screen: SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.line_style_sharp,
      name: 'Infinity Scroll & Pull to refresh',
      screen: ListviewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardsScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(settings) {
    print(settings);

    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
