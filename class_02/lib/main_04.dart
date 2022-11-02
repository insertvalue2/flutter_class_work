import 'package:flutter/material.dart';



/// 어떤 위젯이 Column이나 Row안에 포함되어있을때는
/// 자신이 차지해야할 공간 만큼만 공간을 차지합니다.
/// 하지만 차지해야하는 공간보다 더 공간을 차지하게 하고 싶다면
/// Flexible로 감싸주면됩니다.
/// fit parameter로 조정을 해주는데, default는 FlexFit.loose입니다.
///
///
/// Flexible은 child의 요소가 부모 영역보다 작으면 아무런 변화를 하지 않습니다.
/// Expanded와 가장 큰 차이점이 이것입니다.


/// Flexible, Expanded 차이점 정리
///Flexible	Expanded
///child가 부모보다 큰 경우	: 최대 사이즈로 확장	 |||  최대 사이즈로 확장
///child가 부모보다 작은경우 :	크기변화 없음	최대  ||| 사이즈로 확장
///
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
          Flexible(child: buildContainer(sWidth: 1800, sHeight: 500)),
          buildContainer(sWidth: 60, sHeight: 380, mColor: Colors.green)
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
