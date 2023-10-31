import 'dart:convert';

List<FreeCourses> freeCoursesFromJson(String str) => List<FreeCourses>.from(json.decode(str).map((x) => FreeCourses.fromJson(x)));

String freeCoursesToJson(List<FreeCourses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FreeCourses {
  int id;
  String title;
  String description;
  String erray;
  String duration;
  int numLectures;
  int category;
  List<dynamic> comment;

  FreeCourses({
    required this.id,
    required this.title,
    required this.description,
    required this.erray,
    required this.duration,
    required this.numLectures,
    required this.category,
    required this.comment,
  });

  factory FreeCourses.fromJson(Map<String, dynamic> json) => FreeCourses(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    erray: json["erray"],
    duration: json["duration"],
    numLectures: json["num_lectures"],
    category: json["category"],
    comment: List<dynamic>.from(json["comment"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "erray": erray,
    "duration": duration,
    "num_lectures": numLectures,
    "category": category,
    "comment": List<dynamic>.from(comment.map((x) => x)),
  };
}

