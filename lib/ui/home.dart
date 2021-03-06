import 'package:flutter/material.dart';
import 'package:oraeapp/ui/pages/schedule_page.dart';

import 'tab/bottom_navigation_items.dart';
import 'package:oraeapp/constants/strings.dart';
import 'package:oraeapp/ui/pages/dash_board.dart';
import 'package:oraeapp/ui/pages/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;


  List pages = [
    DashBoardPage(),
    SearchPage(),
    SchedulePage(),
    Text('관심 항목들'),
    Text('설정'),
  ];

  void _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APP_NAME,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: pages[_selectedTabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        items: bottomNavigationItems,
      ),
    );
  }
}
