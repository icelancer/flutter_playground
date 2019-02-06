import 'package:flutter/material.dart';
import 'package:pageview_playground/screen/widgets/pageview_item.dart';

class PageViewWithBuilder extends StatelessWidget {
  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.deepPurple,
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.deepOrange,
    Colors.green,
    Colors.amber,
  ];

  Widget buildItem(BuildContext context, int index) {
    return PageViewItem(title: 'Page ${index + 1}', color: colors[(index + 1) % colors.length],);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageView Animation'),
        ),
        body: PageView.builder(itemBuilder: buildItem, itemCount: 100,)
    );
  }

}