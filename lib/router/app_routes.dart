import 'package:fl_repaso/models/menu_option.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'ListView1 Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'ListView2 Screen',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.ring_volume,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: const CardScreen()),
  ];

  static const initialRoute = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
