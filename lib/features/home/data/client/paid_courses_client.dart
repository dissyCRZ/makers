import 'package:http/http.dart' as http;
import 'package:makers_app/features/home/data/models/paid_courses.dart';
import 'package:makers_app/utils/config/urls.dart';

class PaidCoursesClient {
  Future<List<PaidCourses>?> getPaidCourses(String api) async {
    var freeCourses = http.Client();

    var uri = Uri.parse(baseUrl + api);
    var response = await freeCourses.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return paidCoursesFromJson(json);
    }
  }
}
