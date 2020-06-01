import 'package:flutter/material.dart';
import 'package:oraeapp/domain/item.dart';
import 'package:oraeapp/ui/widgets/item_list.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  ScrollController _starScrollController = ScrollController();
  ScrollController _recentlyScrollController = ScrollController();
  ScrollController _recommendScrollController = ScrollController();
  PageController _pageController = PageController();

  int currentPage = 0;

  List<Item> itemsByStar = List();
  List<Item> itemsByRecently = List();
  List<Item> itemsByRecommend = List();

  @override
  void initState() {
    super.initState();
    fetchStar();
    fetchRecently();
    fetchRecommend();

    _starScrollController.addListener(() {
      if(_starScrollController.position.pixels == _starScrollController.position.maxScrollExtent ){
        fetchStar();
      }
    });

    _recentlyScrollController.addListener(() {
      if(_recentlyScrollController.position.pixels == _recentlyScrollController.position.maxScrollExtent ){
        fetchRecently();
      }
    });

    _recommendScrollController.addListener(() {
      if(_recommendScrollController.position.pixels == _recommendScrollController.position.maxScrollExtent ){
        fetchRecommend();
      }
    });
  }

  @override
  void dispose() {
    _starScrollController.dispose();
    super.dispose();
  }

  void clearList(){
    itemsByStar.clear();
    itemsByRecently.clear();
    itemsByRecommend.clear();
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
                    clearList();
                    fetchStar();
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
                    clearList();
                    fetchRecently();
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
                    clearList();
                    fetchRecommend();
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
          itemCount: itemsByStar.length,
          controller: _starScrollController,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,itemsByStar[index]);
          }
        );
      case 1:
        return ListView.builder(
            itemCount: itemsByRecently.length,
            controller: _recentlyScrollController,
            itemBuilder: (BuildContext context, int index){
              return itemList(context,itemsByRecently[index]);
            }
        );
      case 2:
      default:
      return ListView.builder(
          itemCount: itemsByRecommend.length,
          controller: _recommendScrollController,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,itemsByRecommend[index]);
          }
      );
    }
  }

  fetchStar() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        itemsByStar.add(
          Item(itemsByStar.length,
              "물건입니다.$i",
              "이 물건은 블라블라블라 $i",
              "M-001$i",
              "나이키$i",
              "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg",
              [
                "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg",
                "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg",
                "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg"
              ],
              "4개월",
              "2020-05-31")
        );
      }
    });
  }

  fetchRecently() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        itemsByRecently.add(
            Item(itemsByRecently.length,
                "좋은 물건입니다.$i",
                "이 물건은  좋다 블라블라블라 $i",
                "D-001$i",
                "아디다스$i",
                "https://images.all-free-download.com/images/graphiclarge/two_small_birds_515951.jpg",
                [
                  "https://images.all-free-download.com/images/graphiclarge/two_small_birds_515951.jpg",
                  "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg",
                  "https://images.all-free-download.com/images/graphiclarge/two_small_birds_515951.jpg"
                ],
                "2개월",
                "2020-05-11")
        );
      }
    });
  }

  fetchRecommend() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        itemsByRecommend.add(
            Item(itemsByRecommend.length,
                "좋지 않은 물건입니다.$i",
                "이 물건은  좋지않다 블라블라블라 $i",
                "A-001$i",
                "루이비통$i",
                "https://images.all-free-download.com/images/graphiclarge/goa_small_bird_202958.jpg",
                [
                  "https://images.all-free-download.com/images/graphiclarge/goa_small_bird_202958.jpg",
                  "https://images.all-free-download.com/images/graphiclarge/goa_small_bird_202958.jpg",
                  "https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg"
                ],
                "1개월",
                "2020-05-21")
        );
      }
    });
  }
}
