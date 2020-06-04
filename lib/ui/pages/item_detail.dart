import 'package:flutter/material.dart';
import 'package:oraeapp/domain/item.dart';
import 'package:oraeapp/ui/widgets/image_pager.dart';

class ItemDetailPage extends StatefulWidget {
  final Item item;

  ItemDetailPage({Key key, @required this.item});

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
                  ImagePager(images: widget.item.images,),
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
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.item.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16.0)),
                    Text(widget.item.description, style: TextStyle(color: Colors.black54, fontSize: 14.0),),
                    SizedBox(height: 10.0,)
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
