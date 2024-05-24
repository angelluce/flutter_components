import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/auxiliar_routing_screen.dart';

class RoutingScreen extends StatelessWidget {
  const RoutingScreen({super.key});

  static const String routeName = '/routing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enrutamiento'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AuxiliarRoutingScreen.routeName);
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  Text('Push Named'),
                ],
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, AuxiliarRoutingScreen.routeName);
              },
              icon: const Icon(Icons.add),
              label: const Text('Push Replacement Named'),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, AuxiliarRoutingScreen.routeName, (route) => false);
              },
              icon: const Icon(Icons.add),
              label: const Text('Push Named And Remove Until'),
            ),
            TextButton(onPressed: () {
              Navigator.maybePop(context);
            }, child: const Text('Maybe Pop'),)
          ],
        ),
      ),
    );
  }
}
