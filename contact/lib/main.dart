import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold를 통해 상중하로 레이아웃을 나눌 수 있다
      home: Scaffold(
        appBar: AppBar(
          title: Text("메인"),
        ),
        body: Text("메인입니다"),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
