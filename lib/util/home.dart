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
      body: Container(
        alignment: Alignment.center,
        child: Text("ORAE APP", style: Theme.of(context).textTheme.body1),
      ),
    );
  }
}
