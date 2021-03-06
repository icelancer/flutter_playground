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
          _PageViewPlaygroundListItem(
            title: 'Page View No Snapping',
            route: '/noSnapping',
            color: Colors.black,
          ),
          _PageViewPlaygroundListItem(
            title: 'Page View No Snapping Vertically',
            route: '/noSnappingVertical',
            color: Colors.blue,
          ),
          _PageViewPlaygroundListItem(
            title: 'Page View Scroll Physics',
            route: '/scrollPysics',
            color: Colors.brown,
          ),
          _PageViewPlaygroundListItem(
            title: 'Page View Animation',
            route: '/animation',
            color: Colors.deepPurple
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
            color: Colors.white70,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
