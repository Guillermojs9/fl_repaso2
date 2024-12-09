import 'package:fl_repaso/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.MenuOptions[index].name),
                  leading: Icon(AppRoutes.MenuOptions[index].icon),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.MenuOptions.length));
  }
}
