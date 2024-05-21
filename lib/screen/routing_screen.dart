import 'package:flutter/material.dart';

class RoutingScreen extends StatelessWidget {
  const RoutingScreen({super.key});

  static const String routeName = '/routing';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}