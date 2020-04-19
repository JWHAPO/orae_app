import 'package:flutter/material.dart';
import 'package:oraeapp/theme/mythemes.dart';
import 'package:oraeapp/util/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.getThemeFromKey(MyThemeKeys.LIGHT),
      onGenerateRoute: Router.generateRoute,
      initialRoute: 'pageview',
    );
  }
}