import 'package:get/get.dart';
import 'package:tving/routes/route_page.dart';
import 'package:tving/views/history/history.dart';

class HistoryPage {
  static final ROUTES = [
    GetPage(
      name: RouteName.history,
      page: () => History(),
      // binding: ??Binding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
