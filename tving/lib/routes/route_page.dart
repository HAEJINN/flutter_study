import 'history/history_page.dart';
import 'home/home_page.dart';
import 'my_page/my_page_page.dart';
import 'scheduled/scheduled_page.dart';
import 'search/search_page.dart';
part 'route_name.dart';

class RoutePage {
  static final page = [
    ...HistoryPage.ROUTES,
    ...HomePage.ROUTES,
    ...MyPagePage.ROUTES,
    ...ScheduledPage.ROUTES,
    ...SearchPage.ROUTES,
  ];
}
