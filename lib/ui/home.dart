import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ORAE APP'),),
      body: Column(
        children: <Widget>[
          Text("Next Schedule", style: TextStyle(fontSize: 24.0),),
          scheduleIcon(),
          scheduleIcon1(),
          scheduleIcon2()
        ],
      )
    );
  }

  Widget scheduleIcon(){
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network('https://www.geek.com/wp-content/uploads/2018/08/HAUNTED-MASK-large-preview-625x352.png'),
          ),
        ],
      ),
    );
  }

  Widget scheduleIcon1(){
    return Container(
      decoration: ShapeDecoration(
          image: DecorationImage(
              image: NetworkImage('https://www.geek.com/wp-content/uploads/2018/08/HAUNTED-MASK-large-preview-625x352.png'),
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

  Widget scheduleIcon2(){
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
                    image: new NetworkImage(
                        "https://www.geek.com/wp-content/uploads/2018/08/HAUNTED-MASK-large-preview-625x352.png")
                )
            )),
        Text("Nightmare",
            textScaleFactor: 1.5),
        InkWell(
          child: Text('Click '),
          onTap: (){
            showFancyCustomDialog(context);
          },
        )

      ],
    );
  }

  void showFancyCustomDialog(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        height: 300.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.center,
              child: Text('This is Contents!!!', style: TextStyle(color: Colors.black),),
            ),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Title",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Okay",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              // These values are based on trial & error method
              alignment: Alignment(1.05, -1.05),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

}
