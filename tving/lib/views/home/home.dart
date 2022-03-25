import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tving/controller/home/home_controller.dart';
import 'package:tving/views/widgets/main_container.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      showBottombar: true,
      showAppbar: false,
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Obx(() {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Color.fromRGBO(218, 218, 218, 0.8),
                  elevation: 0,
                  pinned: true, // 축소시 상단에 appbar를 고정할것인가
                  expandedHeight: 100, // 확대시 최대 높이
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            TextButton(onPressed: () {}, child: Text("버튼")),
                            TextButton(onPressed: () {}, child: Text("버튼")),
                            TextButton(onPressed: () {}, child: Text("버튼")),
                            TextButton(onPressed: () {}, child: Text("버튼")),
                          ],
                        ),
                      ],
                    ),
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TVING",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [IconButton(onPressed: () {}, icon: Icon(Icons.share)), Icon(Icons.account_circle_outlined)],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  // 아이템을 빌드하기 위해서 delegate 항목을 구성함
                  // SliverChildBuilderDelegate는 ListView.builder 처럼 리스트의 아이템을 생성해줌
                  delegate: SliverChildListDelegate(
                    [
                      Row(
                        children: [
                          Text(controller.title.value),
                        ],
                      ),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                      Text("?"),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
