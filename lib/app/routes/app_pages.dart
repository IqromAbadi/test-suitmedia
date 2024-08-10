import 'package:get/get.dart';

import '../modules/fisrt_screen/bindings/fisrt_screen_binding.dart';
import '../modules/fisrt_screen/views/fisrt_screen_view.dart';
import '../modules/second_screen/bindings/second_screen_binding.dart';
import '../modules/second_screen/views/second_screen_view.dart';
import '../modules/third_screen/bindings/third_screen_binding.dart';
import '../modules/third_screen/views/third_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FISRT_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.FISRT_SCREEN,
      page: () => const FisrtScreenView(),
      binding: FisrtScreenBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_SCREEN,
      page: () => const SecondScreenView(),
      binding: SecondScreenBinding(),
    ),
    GetPage(
      name: _Paths.THIRD_SCREEN,
      page: () => const ThirdScreenView(),
      binding: ThirdScreenBinding(),
    ),
  ];
}
