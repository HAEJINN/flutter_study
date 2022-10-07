import 'package:get/get.dart';

class CalendarController extends GetxController {
  static CalendarController get to => Get.find();

  var week = ["일", "월", "화", "수", "목", "금", "토"];
  static DateTime now = DateTime.now();

  RxInt year = 0.obs;
  RxInt month = 0.obs;
  RxList days = [].obs;

  List pickedDay = [
    {"year": 0, "month": 0, "day": 0}
  ];

  // 달력 처음값 설정
  setFirst(int setYear, int setMonth) {
    year.value = setYear;
    month.value = setMonth;
    insertDays(year.value, month.value);
  }

  // 일자 계산
  insertDays(int year, int month) {
    days.clear();

    /*
      이번달 채우기
      => 이번달의 마지막날을 구해 1일부터 마지막 날까지 추기
    */
    int lastDay = DateTime(year, month + 1, 0).day;
    for (var i = 1; i <= lastDay; i++) {
      days.add({
        "year": year,
        "month": month,
        "day": i,
        "inMonth": true,
        "picked": false.obs,
      });
    }

    /*
      이번달 1일의 요일 : DateTime(year, month, 1).weekday 
      => 7이면(일요일) 상관x
      => 아니면 비어있는 요일만큼 지난달 채우기
    */
    if (DateTime(year, month, 1).weekday != 7) {
      var temp = [];
      int prevLastDay = DateTime(year, month, 0).day;
      for (var i = DateTime(year, month, 1).weekday - 1; i >= 0; i--) {
        temp.add({
          "year": year,
          "month": month - 1,
          "day": prevLastDay - i,
          "inMonth": false,
          "picked": false.obs,
        });
      }
      days = [...temp, ...days].obs;
    }

    /*
      6줄을 유지하기 위해 남은 날 채우기
      => 6*7 = 42. 42개까지
    */
    var temp = [];
    for (var i = 1; i <= 42 - days.length; i++) {
      temp.add({
        "year": year,
        "month": month + 1,
        "day": i,
        "inMonth": false,
        "picked": false.obs,
      });
    }

    days = [...days, ...temp].obs;

    if (pickedDay[0]["year"] != 0) {
      for (var day in days) {
        if (day["year"] == pickedDay[0]["year"] && day["month"] == pickedDay[0]["month"] && day["day"] == pickedDay[0]["day"]) {
          day["picked"].value = true;
        }
      }
    }
  }

  // 오늘인가?
  isToday(int year, int month, int day) {
    if (year == DateTime.now().year && month == DateTime.now().month && day == DateTime.now().day) {
      return true;
    }
    return false;
  }

  // 날짜 선택
  pickDate(int index) {
    for (var day in days) {
      day["picked"].value = false;
    }
    days[index]["picked"].value = true;

    pickedDay[0]["year"] = days[index]["year"];
    pickedDay[0]["month"] = days[index]["month"];
    pickedDay[0]["day"] = days[index]["day"];
  }

  @override
  void onInit() {
    setFirst(now.year, now.month);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
