import 'package:flutter/material.dart';
import 'package:transform_widget_playground/transform_methods.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          children: <Widget>[
            TransformWithMethods(),
          ],
        ),
      ),
    );
  }
}


