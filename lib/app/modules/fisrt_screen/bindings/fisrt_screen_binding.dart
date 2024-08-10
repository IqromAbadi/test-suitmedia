import 'package:get/get.dart';

import '../controllers/fisrt_screen_controller.dart';

class FisrtScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FisrtScreenController>(
      () => FisrtScreenController(),
    );
  }
}
