import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  static const String routeName = '/list_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 500,
            width: 300,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 500,
            width: 300,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 500,
            width: 300,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      )
    );
  }
}