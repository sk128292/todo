import 'package:get/get.dart';

import 'package:todo/app/modules/home/bindings/home_binding.dart';
import 'package:todo/app/modules/home/views/home_view.dart';
import 'package:todo/app/modules/landing/bindings/landing_binding.dart';
import 'package:todo/app/modules/landing/views/landing_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => LandingView(),
      binding: LandingBinding(),
      transition: Transition.downToUp,
      transitionDuration: Duration(seconds: 1),
    ),
  ];
}
