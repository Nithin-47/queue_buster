import 'package:flutter/material.dart';
import "package:queue_buster/router.dart";

void main() {
  runApp(MaterialApp.router(
    theme: ThemeData(),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
    routerConfig: goRouter,
    // initialRoute: '/navigationBar',
    //
    // routes: {
    //   '/': (context) => Loading(),
    //   '/home': (context) => Home(),
    //   '/location' : (context) => Location(),
    //   '/navigationBar' : (context) => BottomNavigationBarExample(),
    //
    // },


  ));
}

