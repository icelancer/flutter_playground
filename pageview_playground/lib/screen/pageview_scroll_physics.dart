import 'package:flutter/material.dart';
import 'package:pageview_playground/screen/widgets/pageview_item.dart';

class PageViewScrollPhysics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageViewScrollPhysicsState(pageCount: 2);
  }
}

class _PageViewScrollPhysicsState extends State<PageViewScrollPhysics> with SingleTickerProviderStateMixin{

  int pageCount = 1;
  _PageViewScrollPhysicsState({ this.pageCount });
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

  Widget _buildItems(_, int index) {
    return PageViewItem(
      title: 'Page ${index + 1}',
      color: colors[(index + 1) % colors.length],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Scroll Physics'),
      ),
      body: PageView.builder(
        itemBuilder: _buildItems,
        itemCount: pageCount,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
      )
    );
  }
}



