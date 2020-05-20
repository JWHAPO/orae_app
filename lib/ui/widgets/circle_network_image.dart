import 'package:flutter/material.dart';
import 'package:oraeapp/ui/dialog/fancy_dialog.dart';

Widget scheduleIcon(BuildContext context, String imgUrl){
  return Container(
    width: MediaQuery.of(context).size.width * 0.3,
    height: MediaQuery.of(context).size.width * 0.3,
    child: Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(imgUrl),
        ),
      ],
    ),
  );
}

Widget scheduleIcon1(BuildContext context, String imgUrl){
  return Container(
    decoration: ShapeDecoration(
        image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.fitHeight),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(8.0))),
    width: MediaQuery.of(context).size.width * 0.3,
    height: MediaQuery.of(context).size.width * 0.3,
    child: Align(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Container decoration implements rounded corners (radius = 20)",
          style: TextStyle(color: Colors.white),
        ),
      ),
      alignment: Alignment.bottomCenter,
    ),
  );
}

Widget scheduleIcon2(BuildContext context, String imgUrl){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.3,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 5.0,
                  color: Colors.blueGrey
              ),
              image: new DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: new NetworkImage(imgUrl)
              )
          )),
      Text("Nightmare",
          textScaleFactor: 1.5),
      InkWell(
        child: Text('Click '),
        onTap: (){
          showFancyCustomDialog(context, "확인요청", "야근을 하였으니 푹 쉬시길 바라며, 내일은 꼭 하고싶은 일들을 하십시오.",(){
            print('확인을 눌렀습니다.');
          });
        },
      )

    ],
  );

}



void aa(int a){
  print('$a aaa');
}
