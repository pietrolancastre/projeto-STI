import 'package:get/get.dart';
import 'package:projeto/controllers/controller.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies(){
   Get.put<Controller1>(Controller1());
  }
}