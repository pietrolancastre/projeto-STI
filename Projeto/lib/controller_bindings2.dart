import 'package:get/get.dart';
import 'package:projeto/controllers/controller2.dart';

class ControllerBindings2 extends Bindings{
  @override
  void dependencies(){
    Get.put<Controller2>(Controller2());
  }
}