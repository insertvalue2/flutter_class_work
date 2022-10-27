import 'package:flutter/material.dart';

/**
 *  기본 코드 확인해 보기
 *
 *  */
void main() {
  runApp(const MyApp());
}

//  StatelessWidget 상태가 없는 정적 위젯 입니다.
// 1. 한번 화면상에 존재 할 뿐 아무것도 하지 않음
//     상호 작용할 수 없다, 어떠한 변화를 유발시키는 value 값을 가지지 않는다.
class MyApp extends StatelessWidget {
  //2. 생성자 (선택적 매개 변수 ) : 부모생성자
  const MyApp({Key? key}) : super(key: key);

  //3. build : 위젯을 그린다(렌더링)
  // 최초, StatefulWidget 위젯일 경우 변경이 있을 때 마다
  // 호출되어 다시 그림을 그려 준다.
  // 4. Container
  // 컨테이너 위젯안에 그림 그리기, 위젯들의 위치 및 크기 조정 등
  // 여러 복합적인 일 을 수행할 수 있는 위젯 입니다.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}
