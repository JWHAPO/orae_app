import 'package:flutter/material.dart';
import 'package:oraeapp/widget/calendar.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ORAE APP'),),
      body: Container(
        child: Calendar(),
      ),
    );
  }
}
