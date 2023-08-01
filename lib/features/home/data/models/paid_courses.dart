// To parse this JSON data, do
//
//     final paidCourses = paidCoursesFromJson(jsonString);

import 'dart:convert';

List<PaidCourses> paidCoursesFromJson(String str) => List<PaidCourses>.from(json.decode(str).map((x) => PaidCourses.fromJson(x)));

String paidCoursesToJson(List<PaidCourses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PaidCourses {
  int id;
  String title;
  String description;
  String duration;
  int numLectures;
  DateTime startDate;
  String price;

  PaidCourses({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.numLectures,
    required this.startDate,
    required this.price,
  });

  factory PaidCourses.fromJson(Map<String, dynamic> json) => PaidCourses(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    duration: json["duration"],
    numLectures: json["num_lectures"],
    startDate: DateTime.parse(json["start_date"]),
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "duration": duration,
    "num_lectures": numLectures,
    "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "price": price,
  };
}
