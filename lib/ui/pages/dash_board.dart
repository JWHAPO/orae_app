import 'package:flutter/material.dart';

import 'package:oraeapp/ui/widgets/card_view.dart';
import 'package:oraeapp/ui/widgets/item_list.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
//            SlidingCardsView(),
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    itemList(context,"https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80", "title1", "subTitle1"),
                    itemList(context,"https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80", "title2", "subTitle1"),
                    itemList(context,"https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80", "title3", "subTitle1"),
                    itemList(context,"https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80", "title5", "subTitle1"),
                    itemList(context,"https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80", "title6", "subTitle1"),
                    itemList(context,"https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80", "title7", "subTitle1"),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
