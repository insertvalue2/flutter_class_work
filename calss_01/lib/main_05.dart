import 'package:flutter/material.dart';
/// Column - 2
///  위치 변경해 보기
void main() {
  runApp(const MyColumnWidget());
}

class MyColumnWidget extends StatelessWidget {
  const MyColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
    );
  }
}
