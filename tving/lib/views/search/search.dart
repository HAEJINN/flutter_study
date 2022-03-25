import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tving/views/widgets/main_container.dart';

class Search extends GetView {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      showBottombar: true,
      showAppbar: true,
      body: Text("검색"),
    );
  }
}
