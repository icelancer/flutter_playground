import 'package:flutter/material.dart';
import 'package:pageview_playground/screen/widgets/pageview_item.dart';

class PageViewBasic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Basic'),
      ),
      body: PageView(
        children: <Widget>[
          PageViewItem(color: Colors.cyan, title: 'Page 1'),
          PageViewItem(color: Colors.deepPurple, title: 'Page 2'),
          PageViewItem(color: Colors.red, title: 'Page 3'),
          PageViewItem(color: Colors.blue, title: 'Page 4'),
        ],
      ),
    );
  }
}

