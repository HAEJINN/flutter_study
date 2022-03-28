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
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Obx(() {
            return Column(
              children: [
                controller.showLogo.value
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TVING"),
                          Row(
                            children: [
                              Icon(Icons.screen_share_outlined),
                              Icon(Icons.account_circle_outlined),
                            ],
                          )
                        ],
                      )
                    : SizedBox(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("홈"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("실시간"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("TV프로그램"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("영화"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("키즈"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("티빙몰"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("111"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("222"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: CustomScrollView(
                    controller: controller.scrollController,
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            SizedBox(
                              height: Get.height * 0.4,
                              child: Stack(
                                children: [
                                  PageView.builder(
                                    controller: controller.pageController,
                                    onPageChanged: (value) {
                                      controller.setColor(value);
                                    },
                                    itemCount: controller.colorList.length,
                                    itemBuilder: (context, index) {
                                      return Stack(
                                        children: [
                                          SizedBox(
                                            height: Get.height * 0.4,
                                            child: Image.asset(
                                              controller.photoList[index],
                                              width: Get.width,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: Get.height * 0.2,
                                              padding: EdgeInsets.all(15),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text(
                                                    "대충 영화설명 어쩌구저쩌구",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "자세히보기",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    style: OutlinedButton.styleFrom(
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          for (var i = 0; i < controller.colorList.length; i++)
                                            Container(
                                              margin: EdgeInsets.only(left: 2, right: 2),
                                              child: Icon(
                                                Icons.circle,
                                                size: 12,
                                                color: controller.colorList[i] ? Colors.white : Colors.grey,
                                              ),
                                            ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            for (var i = 1; i <= 7; i++)
                              Container(
                                color: Colors.grey[i * 100],
                                child: SizedBox(
                                  height: Get.height * 0.2,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
