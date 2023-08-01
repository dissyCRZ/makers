import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:makers_app/utils/config/urls.dart';

class LoginClient {
  var login = http.Client();
  Future <dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': '8nmac0WY2jxkwUBCHtwi3r46cgkTqeXrHYnJb7IURTbd866b2kehW1JiEiKHYI8i',
      'Content-Type': 'application/json',
      'api_key': '8nmac0WY2jxkwUBCHtwi3r46cgkTqeXrHYnJb7IURTbd866b2kehW1JiEiKHYI8i',
    };

    var response = await login.post(url, body: _payload, headers: _headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return response.body;
    } else {

    }

  }
}