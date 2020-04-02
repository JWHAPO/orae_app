import 'package:flutter/material.dart';
import 'package:oraeapp/widget/calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ORAE APP'),),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("ORAE APP", style: Theme.of(context).textTheme.body1),
            Calendar(),
            scheduleList()
          ],
        )
      ),
    );
  }

  Widget scheduleList(){
    return Container(
      child: ListView.builder(
        itemBuilder: (context, position){
          return ListTile(
            title: Text('$position'),
            subtitle: Text('$position'),
          );
        },
      ),
    );
  }

}
