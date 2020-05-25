import 'package:flutter/material.dart';

import 'package:oraeapp/ui/widgets/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'KIM JEONG WOO1',
            date: '2020-05-25',
            imgUrl: 'https://images.unsplash.com/photo-1590374584613-57da4b5a238a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80',
          ),
          SlidingCard(
            name: 'KIM JEONG WOO2',
            date: '2020-05-31',
            imgUrl: 'https://images.unsplash.com/photo-1590395754820-077d3f111168?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80',
          ),
          SlidingCard(
            name: 'KIM JEONG WOO3',
            date: '2020-06-03',
            imgUrl: 'https://images.unsplash.com/photo-1590334280735-e8121293dbf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2251&q=80',
          ),
          SlidingCard(
            name: 'KIM JEONG WOO4',
            date: '2020-06-01',
            imgUrl: 'https://images.unsplash.com/photo-1590406232136-486bc31aec36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80',
          ),
        ],
      ),
    );
  }
}

