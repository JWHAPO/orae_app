import 'package:flutter/material.dart';

const List pages = [
  Text('대시보드 형식의 데이터 및 잘 나가는 데이터들 관심 데이터들 '),
  Text('검색할 수 있는 것들 검색어 등등'),
  Text('나의 일정'),
  Text('관심 항목들'),
  Text('설정'),
];

const List bottomNavigationItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("홈")),
  BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("검색")),
  BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("일정")),
  BottomNavigationBarItem(icon: Icon(Icons.bookmark), title: Text("관심")),
  BottomNavigationBarItem(icon: Icon(Icons.more_horiz), title: Text("더보기")),
];
