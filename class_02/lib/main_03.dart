import 'package:flutter/material.dart';


///  Row, Column 을 사용했을 경우 참고 사항
///  메인 축 방향으로 화면에 크기를 벗어나면 오류 발생
///  하지만 크로스 축 방향으로 벗어 나더라도 화면을 꽉 채울 뿐
///  오류는 나지 않는다.
///  Expanded - 2

///Expanded 위젯 특징
///Expanded는 child 요소를 렌더링 영역의
///최대 사이즈까지 확장시켜 주는 위젯입니다.









void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
              child: buildContainer(sWidth: 1800, sHeight: 500)),
          Expanded(
            flex: 1,
              child: buildContainer(sWidth: 60, sHeight: 280, mColor: Colors.green)),
          Expanded(
            flex: 1,
              child: buildContainer(sWidth: 100, sHeight: 180, mColor: Colors.amber[100])),

        ],
      ),
    );
  }

  Container buildContainer(
      {double sWidth = 100.0, double sHeight = 100.0, mColor = Colors.blue}) {
    return Container(
      width: sWidth,
      height: sHeight,
      color: mColor,
    );
  }
}
