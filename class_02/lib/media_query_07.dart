import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "sample code";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStlWidget(),
    );
  }
}

class MyStlWidget extends StatelessWidget {
  const MyStlWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder Ex"),
      ),
      body: MyMediaQuery(),
    );
  }
}


class MyMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final screenSize = data.size;
    final orientation = data.orientation;
    final padding = data.padding;
    final insets = data.viewInsets;

    if(screenSize.width < 600) {
        return Container(
          width: 300,
          height: 300,
          color: Colors.red,
        );
    } else {
      return Container(
        width: 600,
        height: 600,
        color: Colors.amber,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "width: ${screenSize.width}\nheight: ${screenSize.height}\naspect ratio: ${screenSize.aspectRatio}",
        ),
        Text(
          "orientation: ${orientation.toString()}",
        ),
        Text(
          "top padding: ${padding.top}\nbottom padding: ${padding.bottom}",
        ),
        Text(
          "top insets: ${insets.top}\nbottom insets: ${insets.bottom}\n",
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          width: 100 * screenSize.aspectRatio,
          color: Colors.blueGrey[100],
        )
      ],
    );
  }
}
