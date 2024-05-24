import 'package:flutter/material.dart';

class SingleChildScreen extends StatelessWidget {
  const SingleChildScreen({super.key});

  static const String routeName = '/single_child';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Single Child'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                color: Colors.amber,
                child: const Center(child: Text('Javascript')),
              ),
              Container(
                height: 250,
                color: Colors.blue,
                child: const Center(child: Text('Python')),
              ),
              Container(
                height: 250,
                color: Colors.grey,
                child: const Center(child: Text('Dart')),
              ),
              Container(
                height: 250,
                color: Colors.red,
                child: const Center(child: Text('Java')),
              ),
              Container(
                height: 250,
                color: Colors.orange,
                child: const Center(child: Text('Kotlin')),
              ),
            ],
          ),
        ));
  }
}
