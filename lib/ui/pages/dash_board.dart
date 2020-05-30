import 'package:flutter/material.dart';
import 'package:oraeapp/ui/widgets/item_list.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  ScrollController _scrollController = ScrollController();
  PageController _pageController = PageController();
  int currentPage = 0;

  List<String> titles = [
    "TITLE-1",
    "TITLE-2",
    "TITLE-3",
    "TITLE-4",
    "TITLE-5",
    "TITLE-6",
    "TITLE-7",
    "TITLE-8"
  ];

  List<String> subTitles = [
    "SUB - TITLE-1",
    "SUB - TITLE-2",
    "SUB - TITLE-3",
    "SUB - TITLE-4",
    "SUB - TITLE-5",
    "SUB - TITLE-6",
    "SUB - TITLE-7",
    "SUB - TITLE-8"
  ];

  List<String> urls_1 = [
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
    "https://images.unsplash.com/photo-1508640622828-7375eaf31253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _pageController.jumpToPage(0);
                  },
                  child: Text(
                    'Star',
                    style: currentPage == 0
                        ? TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)
                        : TextStyle(color: Colors.black54, fontSize: 12.0),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: (){
                    _pageController.jumpToPage(1);
                  },
                  child: Text(
                    'Recently',
                    style: currentPage == 1
                        ? TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)
                        : TextStyle(color: Colors.black54, fontSize: 12.0),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: (){
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    'Recommend',
                    style: currentPage == 2
                        ? TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)
                        : TextStyle(color: Colors.black54, fontSize: 12.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
//            SlidingCardsView(),
            Expanded(
              child: Container(
                  child: PageView.builder(
                      itemCount: 3,
                      controller: _pageController,
                      onPageChanged: (index){
                        setState(() {
                          currentPage = index;
                        });
                      },
                      itemBuilder: (context, position) {
                return _buildPage(position);
              })),
            )
          ],
        ));
  }

  Widget _buildPage(int position) {
    switch (position) {
      case 0:
        return ListView.builder(
          itemCount: urls_1.length,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,urls_1[index],titles[index],subTitles[index]);
          }
        );
      case 1:
        return ListView(
          children: <Widget>[
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title1",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title2",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title3",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title5",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title6",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1472457897821-70d3819a0e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2249&q=80",
                "title7",
                "subTitle1"),
          ],
        );
      case 2:
      default:
        return ListView(
          children: <Widget>[
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title1",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title2",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title3",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title5",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title6",
                "subTitle1"),
            itemList(
                context,
                "https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                "title7",
                "subTitle1"),
          ],
        );
    }
  }
}
