import 'package:get/get.dart';
import 'package:projeto/controllers/controller4.dart';

class ControllerBindings4 extends Bindings{
  @override
  void dependencies(){
    Get.put<Controller4>(Controller4());
  }
}