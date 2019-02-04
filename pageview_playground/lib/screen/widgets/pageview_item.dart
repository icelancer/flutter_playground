import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String title;
  final Color color;

  PageViewItem({ this.title, this.color });

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