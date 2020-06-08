import 'package:flutter/material.dart';
import 'package:oraeapp/domain/maintenance.dart';

Widget maintenanceList(BuildContext context, Maintenance maintenance){

  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, 'maintenance_detail', arguments: maintenance);
    },
    child: Container(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Row(
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
                      image: new NetworkImage(maintenance.userProfile)
                  )
              )),
          Text(maintenance.title)
        ],
      ),
    ),
  );

}