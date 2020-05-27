import 'package:flutter/material.dart';

Widget itemList(BuildContext context, String imgUrl, String title, String subTitle){

  return Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(imgUrl, fit: BoxFit.fill,),
          ),
        ),
        SizedBox(height: 6.0,),
        Align(alignment: Alignment.centerLeft, child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16.0))),
        Align(alignment: Alignment.centerLeft, child: Text(subTitle, style: TextStyle(color: Colors.black54, fontSize: 14.0),)),
        SizedBox(height: 10.0,)
      ],
    ),
  );

}