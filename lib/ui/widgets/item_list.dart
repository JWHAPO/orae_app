import 'package:flutter/material.dart';
import 'package:oraeapp/domain/item.dart';

Widget itemList(BuildContext context, Item item){

  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, 'item_detail', arguments: item);
    },
    child: Container(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(item.mainImage, fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 6.0,),
          Align(alignment: Alignment.centerLeft, child: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16.0))),
          Align(alignment: Alignment.centerLeft, child: Text(item.description, style: TextStyle(color: Colors.black54, fontSize: 14.0),)),
          SizedBox(height: 10.0,)
        ],
      ),
    ),
  );

}