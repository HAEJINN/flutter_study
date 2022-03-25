import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tving/common/bottom_appbar_menu.dart';

class MainContainer extends StatelessWidget {
  final bool showAppbar;
  final bool showBottombar;
  final String? title;
  final Widget body;
  const MainContainer({
    Key? key,
    this.showAppbar = false,
    this.showBottombar = true,
    this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppbar
          ? AppBar(
              title: Text(Get.currentRoute),
              backgroundColor: Colors.white,
              elevation: 1,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              toolbarHeight: 50,
            )
          : null,
      body: body,
      bottomNavigationBar: showBottombar
          ? BottomAppBar(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromRGBO(223, 223, 223, 1),
                      width: 1.0,
                    ),
                  ),
                ),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: BottonAppbarMenu.menuList.map((item) {
                    return GestureDetector(
                      onTap: () => item['page'] != Get.currentRoute ? Get.offAllNamed(item['page']) : null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item['icon'],
                            color: Get.currentRoute == item['page'] ? Colors.green : Colors.black,
                          ),
                          Text(
                            item['name'],
                            style: TextStyle(
                              fontWeight: Get.currentRoute == item['page'] ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          : null,
    );
  }
}
