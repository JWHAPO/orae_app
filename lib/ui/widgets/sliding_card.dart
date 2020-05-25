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
            child: CardContent(name: name, date: date),
          )
        ],
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;

  CardContent({Key key, @required this.name, @required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 20),),
          SizedBox(height: 8,),
          Text(date, style: TextStyle(color: Colors.grey),),
          Spacer(),
          Row(
            children: <Widget>[
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('Reserve'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                onPressed: (){},
              ),
              Spacer(),
              Text('0.00 \$', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(width: 16,)
            ],
          )
        ],
      ),
    );
  }
}
