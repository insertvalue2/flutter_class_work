import 'package:flutter/material.dart';

/**
 *  위젯 확인해 보기
 *   Container -> 부모 없을 경우
 *   크기를 지정하더라도 화면 끝까지 채운다.
 *  텍스트 위젯  확인해보기
 *  모든 것이 위젯 - 객체이다.
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 1. Container 부모 위젯이 없으면 크기를
  // 지정하더라고도 화면 끝까지 확장이 된다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 300,
        height: 500,
        color: Colors.amberAccent,
        alignment: Alignment.center,
        child: const Text(
          'Hello Flutter',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
