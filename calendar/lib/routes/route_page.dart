import 'package:calendar/bindings/calendar_binding.dart';
import 'package:calendar/routes/route_name.dart';
import 'package:calendar/views/calendar.dart';
import 'package:get/get.dart';

class RoutePage {
  static final page = [
    GetPage(
      name: RouteName.calendar,
      page: () => Calendar(),
      binding: CalendarBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
