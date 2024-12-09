import 'package:fl_repaso/screens/listview1_screen.dart';
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
            title: const Text("Nombre de la ruta"),
            leading: const Icon(Icons.access_time_filled_outlined),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
              Navigator.push(context, route);
            },
          ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 5));
  }
}
