import 'package:flutter/material.dart';

import 'package:oraeapp/ui/widgets/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: SlidingCard(
        name: 'KIM JEONG WOO',
        date: '2020-05-11',
        assetName: 'bat.jpg',
      ),
    );
  }
}

