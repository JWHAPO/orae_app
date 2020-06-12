import 'package:flutter/material.dart';
import 'package:oraeapp/domain/maintenance.dart';
import 'package:oraeapp/theme/mythemes.dart';

Widget maintenanceList(BuildContext context, Maintenance maintenance){

  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, 'maintenance_detail', arguments: maintenance);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 2.0,
                          color: Colors.black54
                      ),
                      image: new DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: new NetworkImage(maintenance.userProfile)
                      )
                  )),
              Text(maintenance.userName)
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(maintenance.title, style: MyThemes.lightTheme.textTheme.headline2,),
                Text(maintenance.description)
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Column(
              children: <Widget>[
                Text(maintenance.usedCount.toString(), style: TextStyle(fontSize: 24.0),),
                Text('Used')
              ],
            ),
          ),
          SizedBox(width: 10.0,)
        ],
      ),
    ),
  );

}