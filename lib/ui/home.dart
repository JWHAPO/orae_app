import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ORAE APP'),),
      body: Column(
        children: <Widget>[
          Text("Next Schedule", style: TextStyle(fontSize: 24.0),),
          scheduleIcon(),
          scheduleIcon1()
        ],
      )
    );
  }

  Widget scheduleIcon(){
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network('https://www.geek.com/wp-content/uploads/2018/08/HAUNTED-MASK-large-preview-625x352.png'),
          ),
        ],
      ),
    );
  }

  Widget scheduleIcon1(){
    return Container(
      decoration: ShapeDecoration(
          image: DecorationImage(
              image: NetworkImage('https://www.geek.com/wp-content/uploads/2018/08/HAUNTED-MASK-large-preview-625x352.png'),
              fit: BoxFit.fitHeight),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(8.0))),
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: Align(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "Container decoration implements rounded corners (radius = 20)",
              style: TextStyle(color: Colors.white),
        ),
      ),
      alignment: Alignment.bottomCenter,
    ),
    );
  }

}
