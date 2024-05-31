import 'package:flutter/material.dart';

class SlidersScreen extends StatefulWidget {
  const SlidersScreen({super.key});

  static const String routeName = '/sliders';

  @override
  State<SlidersScreen> createState() => _SlidersScreenState();
}

class _SlidersScreenState extends State<SlidersScreen> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              min: 0,
              max: 10,
              value: value,
              onChanged: (v) {
                setState(() {
                  value = v;
                });
              },
            )
          ],
        ),
    );
  }
}