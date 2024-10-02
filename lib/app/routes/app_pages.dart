import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/views/loadingScreen.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Loading;

  static final routes = [
    GetPage(
      name: Routes.Loading,
      page: () => LoadingScreen(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => LandingPage(),
      binding: HomeBinding(),
    )
  ];
}
