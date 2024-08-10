import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia/app/modules/second_screen/controllers/second_screen_controller.dart';
import '../controllers/third_screen_controller.dart';

class ThirdScreenView extends GetView<ThirdScreenController> {
  const ThirdScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thrid Screen',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff554AF0),
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value && controller.users.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.users.isEmpty) {
            return const Center(child: Text('No users found.'));
          }

          return RefreshIndicator(
            onRefresh: () async {
              controller.fetchUsers();
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.separated(
                itemCount: controller.users.length,
                separatorBuilder: (context, index) =>
                    const Divider(height: 1.5),
                itemBuilder: (context, index) {
                  var user = controller.users[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    title: Text(
                      '${user.firstName} ${user.lastName}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(user.email),
                    onTap: () {
                      Get.find<SecondScreenController>()
                          .selectedUserName
                          .value = '${user.firstName} ${user.lastName}';
                      Get.back();
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
