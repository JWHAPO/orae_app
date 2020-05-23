import 'package:flutter/material.dart';

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;

  const SlidingCard({Key key, @required this.name, @required this.date, @required this.assetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.asset(
              'assets/resources/$assetName',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
