import 'package:get/get.dart';
import 'package:projeto/controllers/controller3.dart';

class ControllerBindings3 extends Bindings{
  @override
  void dependencies(){
    Get.put<Controller3>(Controller3());
  }
}