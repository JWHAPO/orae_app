import 'package:flutter/material.dart';

import 'package:oraeapp/ui/widgets/card_view.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SlidingCardsView(),
    );
  }
}
