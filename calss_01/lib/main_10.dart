import 'package:flutter/material.dart';

/// 크기를 벗어나면 오류 발생이 됩니다.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: Column(
        children: [
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
          const Divider(),
          Container(
            color: Colors.amberAccent[100],
            height: 100,
            child: buildMyRow(),
          ),
        ],
      ),
    ));
  }

  Row buildMyRow() {
    return Row(
            children: [
              Container(
                width: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                color: Colors.blue[200],
              ),
              Container(
                width: 100,
                color: Colors.red[200],
              )
            ],
          );
  }
}
