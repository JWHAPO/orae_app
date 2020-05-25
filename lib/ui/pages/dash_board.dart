import 'package:flutter/material.dart';

import 'package:oraeapp/ui/widgets/card_view.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Star', style: TextStyle(color: Colors.black54, fontSize: 12.0),),
                SizedBox(width: 10.0,),
                Text('Recently', style: TextStyle(color: Colors.black87, fontSize: 16.0, fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),
                Text('Recommend', style: TextStyle(color: Colors.black54, fontSize: 12.0),),
              ],
            ),
            SizedBox(height: 10.0,),
            SlidingCardsView(),
          ],
        )
      ),
    );
  }
}
