import 'package:flutter/material.dart';

/**
 * 오류 발생 - 화면보다 위젯에 크기를 넘어가서 렌더링
 * 을 하게 되면 오류가 발생이 된다.
 */
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
          Container(color: Colors.amber, width: 100, height: 100),
          Container(
            color: Colors.amberAccent,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}

class MyRootContainer extends Container {
  MyRootContainer({Key? key, Widget? child})
      : super(key: key, color: Colors.blueAccent, child: child);
}
