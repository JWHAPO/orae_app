import 'package:flutter/material.dart';

void showFancyCustomDialog(BuildContext context, String title, String description, Function action) {

  double borderRadius = 8.0;

  Dialog fancyDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
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
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 60),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18)),
                  TextSpan(text: '\n\n'),
                  TextSpan(text: description,style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black87, fontSize: 14))
                ]
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 30.0,
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                action();
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                    bottomRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, barrierDismissible: false, builder: (BuildContext context) => fancyDialog);
}