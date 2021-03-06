import 'package:get/get.dart';
import 'package:tving/bingings/home/home_binding.dart';
import 'package:tving/routes/route_page.dart';
import 'package:tving/views/home/home.dart';

class HomePage {
  static final ROUTES = [
    GetPage(
      name: RouteName.home,
      page: () => Home(),
      binding: HomeBinding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
