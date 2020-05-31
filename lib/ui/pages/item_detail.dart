import 'package:flutter/material.dart';

class ItemDetailPage extends StatefulWidget {
  final Map data;

  ItemDetailPage({Key key, @required this.data});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.3,
                    child: ClipRRect(
                      child: Image.network(widget.data['url'], fit: BoxFit.fill,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 10.0),
                    child: InkWell(
                      child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 6.0,),
              Align(alignment: Alignment.centerLeft, child: Text(widget.data['title'], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16.0))),
              Align(alignment: Alignment.centerLeft, child: Text(widget.data['subTitle'], style: TextStyle(color: Colors.black54, fontSize: 14.0),)),
              SizedBox(height: 10.0,)
            ],
          ),

        ),
      ),
    );
  }
}
