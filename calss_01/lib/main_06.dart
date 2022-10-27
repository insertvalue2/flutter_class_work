import 'package:flutter/material.dart';

/**
 * Row 위젯에 개념을 잡자 - 1
 * 자식들을 수평 방향으로 배치
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // 기본적으로 자식들 크기만큼 공간 차지
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("button1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("button2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("button3"),
            ),
          ],
        ),
      ),
    );
  }
}
