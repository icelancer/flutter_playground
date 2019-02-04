import 'package:flutter/material.dart';

class PageViewPlaygroundList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View List'),
      ),
      body: ListView(
        children: <Widget>[
          _PageViewPlaygroundListItem(
            title: 'Page View Basic',
            route: '/basic',
            color: Colors.cyan,
          ),
          _PageViewPlaygroundListItem(
            title: 'Page View With Builder',
            route: '/builder',
            color: Colors.green,
          ),
          _PageViewPlaygroundListItem(
            title: 'Page View Vertical Orientation',
            route: '/orientation',
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class _PageViewPlaygroundListItem extends StatelessWidget {
  final String title;
  final String route;
  final Color color;

  _PageViewPlaygroundListItem({this.title, this.route, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        height: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: color),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
