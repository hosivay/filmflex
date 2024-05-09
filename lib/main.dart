import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

import 'screens/home_screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xFF151530)),
      title: 'FilmFlex',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

 
