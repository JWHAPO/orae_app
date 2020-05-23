import 'package:flutter/material.dart';

import 'tab/bottom_navigation_items.dart';
import 'package:oraeapp/constants/strings.dart';
import 'package:oraeapp/ui/pages/dash_board.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;


  List pages = [
    DashBoardPage(),
    Text('검색할 수 있는 것들 검색어 등등'),
    Text('나의 일정'),
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
