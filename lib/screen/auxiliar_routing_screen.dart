import 'package:flutter/material.dart';

class AuxiliarRoutingScreen extends StatelessWidget {
  const AuxiliarRoutingScreen({super.key});
  
  static const String routeName = '/auxiliar_routing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Pantalla Auxiliar')),

      body: Center(

        child: ElevatedButton(

          child: const Text("OK's"),

          onPressed: (){},

        ),

      ),

    );
  }
}