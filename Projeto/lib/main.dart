import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto/screens/home.dart';
import 'controller_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings1(),
      home: const Home(),
    );
  }
}
