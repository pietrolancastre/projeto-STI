import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../controllers/controller2.dart';

class Album2 extends StatelessWidget {
  const Album2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller2>();

    return Scaffold(
      body: Obx(  () => _controller.isLoading.value? const CircularProgressIndicator(): Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AlbumID: ${_controller.photoList[0].albumId}'),
            Text('ID: ${_controller.photoList[0].albumId}'),
            Text('title: ${_controller.photoList[0].albumId}'),
            Image.network(_controller.photoList[0].thumbnailUrl)
          ],
        ),
      ),
      ),
    );
  }
}
