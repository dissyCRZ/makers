import 'dart:convert';

List<FreeCourses> freeCoursesFromJson(String str) => List<FreeCourses>.from(json.decode(str).map((x) => FreeCourses.fromJson(x)));

String freeCoursesToJson(List<FreeCourses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FreeCourses {
  int id;
  String title;
  String duration;
  int numLectures;
  String videoUrl;

  FreeCourses({
    required this.id,
    required this.title,
    required this.duration,
    required this.numLectures,
    required this.videoUrl,
  });

  factory FreeCourses.fromJson(Map<String, dynamic> json) => FreeCourses(
    id: json["id"],
    title: json["title"],
    duration: json["duration"],
    numLectures: json["num_lectures"],
    videoUrl: json["video_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "duration": duration,
    "num_lectures": numLectures,
    "video_url": videoUrl,
  };
}

