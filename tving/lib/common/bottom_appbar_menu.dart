/*
  바텀 네비게이션 바에 들어갈 것들을 모아두자
*/

import 'package:flutter/material.dart';
import 'package:tving/routes/route_page.dart';

class BottonAppbarMenu {
  static const List<Map> menuList = [
    {
      "page": RouteName.home,
      "name": "홈",
      "icon": Icons.home,
    },
    {
      "page": RouteName.scheduled,
      "name": "개봉예정",
      "icon": Icons.video_collection,
    },
    {
      "page": RouteName.search,
      "name": "검색",
      "icon": Icons.search,
    },
    {
      "page": RouteName.history,
      "name": "기록",
      "icon": Icons.history,
    }
  ];
}
