import 'package:flutter/material.dart';
import 'package:oraeapp/domain/item.dart';
import 'package:oraeapp/domain/maintenance.dart';
import 'package:oraeapp/domain/task.dart';
import 'package:oraeapp/ui/widgets/image_pager.dart';
import 'package:oraeapp/ui/widgets/maintenance_list.dart';
import 'package:oraeapp/ui/widgets/tags.dart';

class ItemDetailPage extends StatefulWidget {
  final Item item;

  ItemDetailPage({Key key, @required this.item});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {

  ScrollController _scrollController = ScrollController();

  List<Maintenance> maintenances = List();

  @override
  void initState() {
    super.initState();
    fetchMaintenances();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchMaintenances();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    Text(widget.item.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20.0)),
                    SizedBox(height: 6.0,),
                    Text('${widget.item.modelNo}', style: TextStyle(color: Colors.black54, fontSize: 14.0),),
                    SizedBox(height: 6.0,),
                    Text('${widget.item.maker}', style: TextStyle(color: Colors.black54, fontSize: 14.0),),
                    SizedBox(height: 6.0,),
                    Text(widget.item.description, style: TextStyle(color: Colors.black54, fontSize: 14.0),),
                    SizedBox(height: 10.0,),
                    tags(["평균 3개월", "쉬움", "건조기", "찬물세탁"]),
                    SizedBox(height: 4.0,),
                    Divider(height: 1.0,color: Colors.grey,),
                  ],
                )
              ),
              Expanded(
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.black12,
                      ),
                      itemCount: maintenances.length,
                      controller: _scrollController,
                      itemBuilder: (BuildContext context, int index){
                        return maintenanceList(context, maintenances[index]);
                      },
                    ),
                  ),
              )
            ],
        ),
      ),
    );
  }

  void fetchMaintenances() {
    setState(() {
      for(int i=0; i<5; i++){
        maintenances.add(
          Maintenance(
            maintenances.length,
            "title $i",
            "description  $i",
            i,
            i,
            "Mr.Kim $i",
            "https://www.lecturernews.com/news/photo/201904/17144_40358_215.jpg",
            [
              Task(i, i, i, "description", 1, "M", ["photos",""], "2020-05-04"),
              Task(i, i, i, "description", 1, "M", ["photos",""], "2020-05-04"),
            ],
            1,
            40,
            "2020-04-55"
          )
        );
      }
    });
  }
}
