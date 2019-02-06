import 'package:flutter/material.dart';

class TransformWithMethods extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TransformState();
  }

}

class TransformState extends State<TransformWithMethods> {
  double rotate = 0;
  double scale = 1;
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: RaisedButton(
                  child: Text('ROTATE'),
                  onPressed: () {
                    setState(() {
                      rotate++;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      scale += 0.5;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                  child: Text('-'),
                  onPressed: () {
                    setState(() {
                      scale -= 0.5;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('TRANSLATE LEFT'),
                    onPressed: () {
                      setState(() {
                        offset -= 50;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('TRANSLATE RIGHT'),
                    onPressed: () {
                      setState(() {
                        offset += 50;
                      });
                    },
                  ),
                )
              ],
            )
        ),

        Expanded(
          child: Container(
            alignment: Alignment(0, 0),
            child: Transform.translate(
                offset: Offset(offset, 0),
                child: Transform.scale(
                  scale: scale,
                  child: Transform.rotate(
                    angle: rotate,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.pink,
                    ),
                  ),
                )
            ),
          ),
        )
      ],
    );
  }

}