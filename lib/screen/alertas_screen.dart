import 'package:flutter/material.dart';

class AlertasScreen extends StatelessWidget {
  const AlertasScreen({super.key});
  static const String routeName = '/alertas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context, 
                barrierDismissible: false,
                barrierColor: Colors.red.withOpacity(0.5),
                builder: (context) {
                return AlertDialog(
                  title: const Text('Alerta'),
                  content: const Text('Contenido de la alerta'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Aceptar'),
                    ),
                  ],
                );
              });
            },
          ),
        ],
      ),
      body: Center (child: Text('Hola'),)
    );
  }
}