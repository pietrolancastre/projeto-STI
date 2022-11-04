import 'package:get/get.dart';
import 'package:projeto/controllers/controller1.dart';

class ControllerBindings1 extends Bindings{
  @override
  void dependencies(){
   Get.put<Controller1>(Controller1());
  }
}