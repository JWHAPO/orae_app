import 'package:flutter/material.dart';

class PageViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Text('Page1'),
        ),
        Container(
          color: Colors.cyan,
          child: Text('Page2'),
        ),
        Container(
          color: Colors.deepPurple,
          child: Text('Page3'),
        ),
      ],
    );
  }
}
