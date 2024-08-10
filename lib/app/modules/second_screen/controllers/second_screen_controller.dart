import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  var selectedUserName = 'No user selected'.obs;

  @override
  void onInit() {
    super.onInit();
    var args = Get.arguments as Map<String, dynamic>;
    selectedUserName.value = args['name'] ?? 'No user selected';
  }
}
