import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/album_fotos_screen.dart';
import 'package:flutter_basic_app/screen/alertas_screen.dart';
import 'package:flutter_basic_app/screen/infinity_scroll_screen.dart';
import 'package:flutter_basic_app/screen/list_view_screen.dart';
import 'package:flutter_basic_app/screen/routing_screen.dart';
import 'package:flutter_basic_app/screen/single_child_screen.dart';
import 'package:flutter_basic_app/screen/sliders_screen.dart';
import 'package:flutter_basic_app/screen/tarjetas_screen.dart';

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
              color: Colors.amber,
            ),
            title:  const Text('Enrutamiento',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.amber,
            ),
            onTap: () {
              Navigator.pushNamed(context, RoutingScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.list,
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
              Icons.list_outlined,
              color: Colors.blue,
            ),
            title:  const Text('Single Child Scroll View',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pushNamed(context, SingleChildScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_alert,
              color: Colors.lime,
            ),
            title:  const Text('Alertas',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lime,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.lime,
            ),
            onTap: () {
              Navigator.pushNamed(context, AlertasScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.card_giftcard,
              color: Colors.blueGrey,
            ),
            title:  const Text('Tarjetas',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.blueGrey,
            ),
            onTap: () {
              Navigator.pushNamed(context, TarjetasScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.photo_camera,
              color: Colors.orange,
            ),
            title:  const Text('Álbum de fotos',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.pushNamed(context, AlbumFotosScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.photo_camera,
              color: Colors.greenAccent,
            ),
            title:  const Text('Sliders',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.greenAccent,
            ),
            onTap: () {
              Navigator.pushNamed(context, SlidersScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.swap_vertical_circle_outlined,
              color: Colors.purple,
            ),
            title:  const Text('Infinity Scroll',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.purple,
            ),
            onTap: () {
              Navigator.pushNamed(context, InfinityScrollScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
