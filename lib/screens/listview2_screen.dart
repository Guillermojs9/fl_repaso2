import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final equipos = const [
    'Granada CF',
    'Malaga CF',
    'UD Almeria',
    'Albacete BP'
  ];
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 2"),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(equipos[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              final equipo = equipos[index];
              print(equipo);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: equipos.length,
        ));
  }
}
