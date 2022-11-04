import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller1.dart';

class Album1 extends StatelessWidget {
  const Album1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller1>();

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
