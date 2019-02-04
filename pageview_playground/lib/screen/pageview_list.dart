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
          ),
        ],
      ),
    );
  }
}

class _PageViewPlaygroundListItem extends StatelessWidget {
  final String title;
  final String route;

  _PageViewPlaygroundListItem({this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        padding: EdgeInsets.all(50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.cyan),
        child: Text(
          title,
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
