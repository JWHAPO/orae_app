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

  List<String> titles = List();
  List<String> subTitles = List();
  List<String> urls = List();

  @override
  void initState() {
    super.initState();
    fetch();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        fetch();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
          itemCount: urls.length,
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,urls[index],titles[index],subTitles[index]);
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

  fetch() async{
    setState(() {

      for(int i = 0; i < 5; i++){
        urls.add("https://images.unsplash.com/photo-1498579687545-d5a4fffb0a9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80");
        titles.add("타이틀");
        subTitles.add("서브타이틀");
      }

    });
  }
}
