import 'package:flutter/material.dart';

/// 1
///
/// Flexible과 Expanded은 Flutter에서 반응형 어플리케이션을 만들기 위해 사용하는 Widget 입니다.

/// 두 위젯의 목적은 반응형 디자인입니다.
/// 즉, Flutter 앱이 화면 크기에 따라 변경되고 적응하는 것입니다.
/// 두 위젯 모두 Column과 Row와 밀접한 연관이 있으며,
/// 상위 Column과 Row의
/// 기본축에 연관된 하위 위젯들을 Responsive하게 사이즈를 변경 시켜줍니다.
///

///  Expanded 위젯은 자식 위젯 등을 부모위젯의 남은 부분을
///  전부 채울 수 있는 기능을 제공한다.
///  크기가 5 일경우 1 : 1 : 3
///  그리고  flex 속성을 사용해서 직접 조정할 수 있다.
///  단 다른 위젯을 배치 후 남은 공간을 활용해서 처리 가능 하다.
///  사용처 : 남는 공간에 위젯을 화면에 꽉 채우고 싶을 때
///  특정 컴포넌트들이 화면 넓이에 맞게 비율로 적용하고  싶을 때

///  Row, Column 을 사용했을 경우 참고 사항
///  메인 축 방향으로 화면에 크기를 벗어나면 오류 발생
///  하지만 크로스 축 방향으로 벗어 나더라도 화면을 꽉 채울 뿐
///  오류는 나지 않는다.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: [
          buildContainer(mColor: Colors.red),
          // 위에 있는 위젯공간을 제외 하고 남은 공간에서 조절이 된다.
          Expanded(
              flex: 3,
              child: buildContainer(sHeight: 1000.0, mColor: Colors.blue)),
          Expanded(
            flex: 2,
              child: buildContainer(mColor: Colors.amberAccent)),
        ],
      ),
    );
  }

  Container buildContainer(
      {sWidth = 100.0, sHeight = 100.0, mColor = Colors.blue}) {
    return Container(
      width: sWidth,
      height: sHeight,
      color: mColor,
    );
  }
}
