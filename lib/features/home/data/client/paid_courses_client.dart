import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:makers_app/features/home/data/models/paid_courses.dart';
import 'package:makers_app/utils/config/urls.dart';

class PaidCoursesClient {
  Future<List<PaidCourses>?> getPaidCourses(String api) async {
    var paidCourses = http.Client();
    var uri = Uri.parse(baseUrl + api);
    var headers = {
      'Content-Type': 'application/json; charset=utf-8',
    };
    var response = await paidCourses.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var jsonResponse = utf8.decode(response.bodyBytes);
      print(jsonResponse);
      return paidCoursesFromJson(jsonResponse.toString());
    }
  }
}
