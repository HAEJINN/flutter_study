import 'package:get/get.dart';
import 'package:tving/routes/route_page.dart';
import 'package:tving/views/my_page/my_page.dart';

class MyPagePage {
  static final ROUTES = [
    GetPage(
      name: RouteName.mypage,
      page: () => MyPage(),
      // binding: ??Binding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
