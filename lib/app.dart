import 'package:flutter_basic_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: HomeScreen.routeName,
    );
  }
}
