import 'package:get/get.dart';
import 'package:tving/routes/route_page.dart';
import 'package:tving/views/scheduled/scheduled.dart';

class ScheduledPage {
  static final ROUTES = [
    GetPage(
      name: RouteName.scheduled,
      page: () => Scheduled(),
      // binding: ??Binding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
