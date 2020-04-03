import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:oraeapp/domain/user.dart';

class Api{

  static const BASE_URL = 'http://api.test.com';
  static const Map<String, String> headers = {"Content-type": "application/json", };

  static String getUrlUsers() => BASE_URL+'/user';

  Future<Users> getUsers() async {
    final http.Response response =
      await _makeRequest(Uri.encodeFull(getUrlUsers()));

    return Users.fromJson(json.decode(response.body));
  }

  Future<http.Response> _makeRequest(String url) async {
    print("calling -> " + url);
    return await http.get(url, headers: headers);
  }
}