import 'package:get/get.dart';
import 'controllers/bottom_navbar_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>BottomNavbarController());
  }

}