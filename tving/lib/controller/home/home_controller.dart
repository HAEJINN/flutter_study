import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final storage = GetStorage();
  static HomeController get to => Get.find();

  final ScrollController scrollController = ScrollController();
  final PageController pageController = PageController(initialPage: 0);
  RxList colorList = [true, false, false, false, false].obs;
  List photoList = ["assets/sky1.jpg", "assets/sky2.jpg", "assets/sky3.jpg", "assets/sky4.jpg", "assets/sky5.jpg"];

  RxString title = "홈".obs;
  RxBool showLogo = true.obs;

  setColor(idx) {
    for (var i = 0; i < colorList.length; i++) {
      if (i == idx) {
        colorList[i] = true;
      } else {
        colorList[i] = false;
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.offset == scrollController.position.minScrollExtent && !scrollController.position.outOfRange) {
        showLogo.value = true;
      } else {
        showLogo.value = false;
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
