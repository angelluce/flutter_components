import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/routing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // rutas
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes básicos de Flutter'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.alt_route,
              color: Colors.pink,
            ),
            title:  const Text('Enrutamiento',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.pushNamed(context, RoutingScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
