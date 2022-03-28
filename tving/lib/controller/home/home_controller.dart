import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final storage = GetStorage();
  static HomeController get to => Get.find();

  final ScrollController scrollController = ScrollController();
  RxList colorList = [true, false, false, false, false].obs;

  RxString title = "홈".obs;
  RxBool showLogo = true.obs;

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
