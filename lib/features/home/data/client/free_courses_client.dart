import 'package:http/http.dart' as http;
import 'package:makers_app/features/home/data/models/free_courses.dart';
import 'package:makers_app/utils/config/urls.dart';

class FreeCoursesClient {
  Future<List<FreeCourses>?> getFreeCourses(String api) async {
    var freeCourses = http.Client();

    var uri = Uri.parse(baseUrl + api);
    var headers = {
      'Content-Type': 'application/json; charset=utf-8',
    };
    var response = await freeCourses.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var json = response.body;
      return freeCoursesFromJson(json);
    }
  }
}

// class FreeCoursesClient {
//   var freeCourses = http.Client();
//   Future <dynamic> get(String api) async {
//     var url = Uri.parse(baseUrl + api);
//     // var _payload = json.encode(object);
//     var _headers = {
//       'Authorization': '8nmac0WY2jxkwUBCHtwi3r46cgkTqeXrHYnJb7IURTbd866b2kehW1JiEiKHYI8i',
//       'Content-Type': 'application/json',
//       'api_key': '8nmac0WY2jxkwUBCHtwi3r46cgkTqeXrHYnJb7IURTbd866b2kehW1JiEiKHYI8i',
//     };
//
//     var response = await freeCourses.post(url, headers: _headers);
//     print(response.statusCode);
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//
//     }
//
//   }
// }