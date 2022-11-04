import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../controller_bindings.dart';
import '../controller_bindings2.dart';
import '../controller_bindings3.dart';
import '../controller_bindings4.dart';
import '../controllers/controller1.dart';
import 'album1.dart';
import 'album2.dart';
import 'album3.dart';
import 'album4.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Get.to(Album1(), binding: ControllerBindings1());
              },
                  child: const Text('Album 1')),
              const Padding(padding: EdgeInsetsDirectional.all(40.0)),
              ElevatedButton(onPressed: () {
                Get.to(Album2(), binding: ControllerBindings2());
              },
                  child: const Text('Album 2')),

            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Get.to(Album3(), binding: ControllerBindings3());
              },
                  child: const Text('Album 3')),
              const Padding(padding: const EdgeInsetsDirectional.all(40.0)),
              ElevatedButton(onPressed: () {
                Get.to(Album4(), binding: ControllerBindings4());
              },
                  child: const Text('Album 4')),
            ],
          ),
        ],
      ),
    );
  }
}
