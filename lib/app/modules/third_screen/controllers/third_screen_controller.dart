import 'package:get/get.dart';
import 'package:suitmedia/app/Service/api_service.dart';
import 'package:suitmedia/app/models/user_model.dart';

class ThirdScreenController extends GetxController {
  final ApiService apiService = ApiService();
  var users = <UserModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    if (isLoading.value) return;

    isLoading.value = true;
    var fetchedUsers = await apiService.getUsers();
    if (fetchedUsers != null) {
      users.value = fetchedUsers;
    }
    isLoading.value = false;
  }
}
