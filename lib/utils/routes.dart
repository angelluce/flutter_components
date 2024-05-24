import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/alertas_screen.dart';
import 'package:flutter_basic_app/screen/auxiliar_routing_screen.dart';
import 'package:flutter_basic_app/screen/home_screen.dart';
import 'package:flutter_basic_app/screen/list_view_screen.dart';
import 'package:flutter_basic_app/screen/routing_screen.dart';
import 'package:flutter_basic_app/screen/single_child_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  RoutingScreen.routeName: (context) => const RoutingScreen(),
  AuxiliarRoutingScreen.routeName: (context) => const AuxiliarRoutingScreen(),

  ListViewScreen.routeName: (context) => const ListViewScreen(),
  SingleChildScreen.routeName: (context) => const SingleChildScreen(),
  AlertasScreen.routeName: (context) => const AlertasScreen(),
};