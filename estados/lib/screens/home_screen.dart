import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  HomeScreen({super.key});

  final List<String> bikeRoutes = [
    'Route 1: Guardabosques Galeras',
    'Route 2: Bosque del Común',
    'Route 3: Parámo Bordoncillo',
    'Route 4: Laguna Negra',
    'Route 5: Parámo Morasurso'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Bike Routes'),
      ),
      body: ListView.builder(
        itemCount: bikeRoutes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text(bikeRoutes[index]),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected: ${bikeRoutes[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
