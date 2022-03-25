import 'package:get/get.dart';
import 'package:tving/views/search/search.dart';
import '../route_page.dart';

class SearchPage {
  static final ROUTES = [
    GetPage(
      name: RouteName.search,
      page: () => Search(),
      // binding: ??Binding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
