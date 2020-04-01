import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:oraeapp/domain/user.dart';

class Api{

  static const BASE_URL = 'http://api.test.com';

  static String getUrlUserList() => BASE_URL+'/user';



  static Future<List<User>> getUsers() async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.post(Uri.encodeFull(getUrlUserList()), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);

        print('Json:$_jsonResponse');

        Map<String, dynamic> json = jsonDecode(_jsonResponse);

        Users users = Users.fromJson(json);

        return users.users;
      }else{
        //To Do 에러처리
        return null;
      }

    } on TimeoutException catch (e) {
      print('TimeoutException$e');
      return null;
    } on Error catch (e){
      print('Error$e');
      return null;
    }
  }

}