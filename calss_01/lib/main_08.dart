import 'package:flutter/material.dart';

/// 오류 발생 - 화면보다 위젯에 크기를 넘어가서 렌더링
/// 을 하게 되면 오류가 발생이 된다.
/// 크기를 작게 만들어서 배치해 보자.
/// 1. 함수로 만들어 주는 단축키
///     컨트롤 + 알트 + M
///   Row에  CrossAxisAlignment  stretch 속성 확인 하기
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final double cws  = 50;
  final double chs = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildMyRow(),
    );
  }

  Row buildMyRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(color: Colors.amber, width: cws, height: chs),
        Container(
          color: Colors.amberAccent,
          width: cws,
          height: chs,
        ),
        Container(
          color: Colors.red,
          width: cws,
          height: chs,
        ),
        Container(
          color: Colors.blueAccent,
          width: cws,
          height: chs,
        ),
      ],
    );
  }
}

class MyRootContainer extends Container {
  MyRootContainer({Key? key, Widget? child})
      : super(key: key, color: Colors.blueAccent, child: child);
}
