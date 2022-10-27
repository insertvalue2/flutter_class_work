import 'package:flutter/material.dart';
/// Column - 1
///  레이아웃 개념을 확인하자.
///
///  Column : 자식 들을 수직 방향으로 배치
///  크기를 지정하지 않았다면 자식 위젯의 크기만큼 공간을 차지 한다.
///  주축 방향, (mainAxisAlignment)
///  역 방향 : - CrossAxisAlignment.stretch (자식 위젯 크기를 확장 가능)
///  버튼 종류 확인
///  https://docs.flutter.dev/release/breaking-changes/buttons
void main() {
  runApp(const MyColumnWidget());
}

class MyColumnWidget extends StatelessWidget {
  const MyColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.end ,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {},
            child: Text("button1"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("button2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("button3"),
          ),
        ],
      ),
    );
  }
}
