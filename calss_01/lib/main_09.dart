
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final double width = 80;
  final double height = 80;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: width, height: height, color: Colors.red,),
            Container(width: width, height: height, color: Colors.blue[100],),
            Container(width: width, height: height, color: Colors.green[100],),
          ],
        ),
      ),
    );
  }
}
