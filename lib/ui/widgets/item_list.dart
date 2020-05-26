import 'package:flutter/material.dart';

Widget itemList(String imgUrl, String title, String subTitle){

  return ListTile(
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16.0),),
    subtitle: Text(subTitle, style: TextStyle(color: Colors.black54, fontSize: 14.0),),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(imgUrl),
    ),
  );

}