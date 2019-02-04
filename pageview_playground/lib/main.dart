import 'package:flutter/material.dart';
import 'package:pageview_playground/screen/pageview_list.dart';
import 'package:pageview_playground/screen/pageview_basic.dart';
import 'package:pageview_playground/screen/pageview_builder.dart';
import 'package:pageview_playground/screen/pageview_orientation.dart';
import 'package:pageview_playground/screen/pageview_snapping.dart';

void main() => runApp(PageViewApp());

class PageViewApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => PageViewPlaygroundList(),
        '/basic': (_) => PageViewBasic(),
        '/builder': (_) => PageViewWithBuilder(),
        '/orientation': (_) => PageViewOrientation(),
        '/noSnapping': (_) => PageViewNoSnapping(),
      },
    );
  }
}
