import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final equipos = const [
    'Granada CF',
    'Malaga CF',
    'UD Almeria',
    'Albacete BP'
  ];
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 1"),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            ...equipos.map(
              (e) => ListTile(
                title: Text(e),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            )
          ],
        ));
  }
}
