import 'package:flutter/material.dart';

class PageViewBasic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Basic'),
      ),
      body: PageView(
        children: <Widget>[
          _PageViewItem(color: Colors.cyan, title: 'Page 1'),
          _PageViewItem(color: Colors.deepPurple, title: 'Page 2'),
          _PageViewItem(color: Colors.red, title: 'Page 3'),
          _PageViewItem(color: Colors.blue, title: 'Page 4'),
        ],
      ),
    );
  }
}

class _PageViewItem extends StatelessWidget {
  final String title;
  final Color color;

  _PageViewItem({ this.title, this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, -0.1),
      color: color,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}
