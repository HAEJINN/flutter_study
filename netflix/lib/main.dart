import 'package:flutter/material.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: DefaultTabController(
        // TabBar와 TabBarView 객체를 연결하는 방법
        length: 4, // 탭바의 길이
        child: Scaffold(
          body: TabBarView(
            physics:
                NeverScrollableScrollPhysics(), //사용자가 직접 손가락 모션을 통해 스크롤하는 기능을 막겠다. => 손가락 움직임으로 탭 전환 x
            children: [
              Container(
                child: Text("Home"),
              ),
              Container(
                child: Text("Search"),
              ),
              Container(
                child: Text("Save"),
              ),
              Container(
                child: Text("More"),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
