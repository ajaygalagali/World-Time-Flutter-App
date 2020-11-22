import 'package:flutter/material.dart';
import 'package:world_time/pages/area-list-page.dart';
import 'package:world_time/pages/home-page.dart';
import 'package:world_time/pages/loading-page.dart';
import 'package:world_time/pages/location-list-page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/loading':(context) =>LoadingPage(),
      '/home':(context) => HomePage(),
      '/locationlist':(context) => LocationListPage(),
      '/arealist':(context) => AreaListPage()
    },
  ));
}

