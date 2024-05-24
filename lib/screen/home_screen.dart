import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/alertas_screen.dart';
import 'package:flutter_basic_app/screen/list_view_screen.dart';
import 'package:flutter_basic_app/screen/routing_screen.dart';
import 'package:flutter_basic_app/screen/single_child_screen.dart';

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
      body: ListView(
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
          ),
          ListTile(
            leading: const Icon(
              Icons.alt_route,
              color: Colors.pink,
            ),
            title:  const Text('List View',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.pushNamed(context, ListViewScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.alt_route,
              color: Colors.pink,
            ),
            title:  const Text('Single Child Scroll View',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.pushNamed(context, SingleChildScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.alt_route,
              color: Colors.pink,
            ),
            title:  const Text('Alertas',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.pushNamed(context, AlertasScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
