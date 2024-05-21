import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/home_screen.dart';
import 'package:flutter_basic_app/screen/routing_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  RoutingScreen.routeName: (context) => const RoutingScreen(),
};