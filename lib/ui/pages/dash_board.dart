import 'package:flutter/material.dart';
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

  List<String> starTitles = List();
  List<String> starSubTitles = List();
  List<String> starImages = List();

  List<String> recentlyTitles = List();
  List<String> recentlySubTitles = List();
  List<String> recentlyImages = List();

  List<String> recommendTitles = List();
  List<String> recommendSubTitles = List();
  List<String> recommendImages = List();

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
                    starImages.clear();
                    starTitles.clear();
                    starSubTitles.clear();
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
                    recentlyImages.clear();
                    recentlyTitles.clear();
                    recentlySubTitles.clear();
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
                    recommendImages.clear();
                    recommendTitles.clear();
                    recommendSubTitles.clear();
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
          itemCount: starImages.length,
          controller: _starScrollController,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,starImages[index],starTitles[index],starSubTitles[index]);
          }
        );
      case 1:
        return ListView.builder(
            itemCount: recentlyImages.length,
            controller: _recentlyScrollController,
            itemBuilder: (BuildContext context, int index){
              return itemList(context,recentlyImages[index],recentlyTitles[index],recentlySubTitles[index]);
            }
        );
      case 2:
      default:
      return ListView.builder(
          itemCount: recommendImages.length,
          controller: _recommendScrollController,
          itemBuilder: (BuildContext context, int index){
            return itemList(context,recommendImages[index],recommendTitles[index],recommendSubTitles[index]);
          }
      );
    }
  }

  fetchStar() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        starImages.add("https://images.all-free-download.com/images/graphiclarge/small_cookies_184538.jpg");
        starTitles.add("좋아요 순 타이틀");
        starSubTitles.add("좋아요 순 서브타이틀,좋아요 순 서브타이틀,좋아요 순 서브타이틀,좋아요 순 서브타이틀,좋아요 순 서브타이틀");
      }
    });
  }

  fetchRecently() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        recentlyImages.add("https://images.all-free-download.com/images/graphiclarge/two_small_birds_515951.jpg");
        recentlyTitles.add("최근 순 타이틀");
        recentlySubTitles.add("최근 순 서브타이틀,최근 순 서브타이틀,최근 순 서브타이틀,최근 순 서브타이틀,최근 순 서브타이틀");
      }
    });
  }

  fetchRecommend() async{
    setState(() {
      for(int i = 0; i < 5; i++){
        recommendImages.add("https://images.all-free-download.com/images/graphiclarge/goa_small_bird_202958.jpg");
        recommendTitles.add("추천 순 타이틀");
        recommendSubTitles.add("추천 순 서브타이틀,추천 순 서브타이틀,추천 순 서브타이틀,추천 순 서브타이틀,추천 순 서브타이틀");
      }
    });
  }
}
