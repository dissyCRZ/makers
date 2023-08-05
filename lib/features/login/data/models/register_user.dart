import 'dart:convert';

RegisterUser registerUserFromJson(String str) => RegisterUser.fromJson(json.decode(str));

String registerUserToJson(RegisterUser data) => json.encode(data.toJson());

class RegisterUser {
  String email;
  String password;
  int schoolNumber;
  String schoolName;
  String studentClass;
  String location;
  String firstName;
  String lastName;

  RegisterUser({
    required this.email,
    required this.password,
    required this.schoolNumber,
    required this.schoolName,
    required this.studentClass,
    required this.location,
    required this.firstName,
    required this.lastName,
  });

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
    email: json["email"],
    password: json["password"],
    schoolNumber: json["school_number"],
    schoolName: json["school_name"],
    studentClass: json["student_class"],
    location: json["location"],
    firstName: json["first_name"],
    lastName: json["last_name"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "school_number": schoolNumber,
    "school_name": schoolName,
    "student_class": studentClass,
    "location": location,
    "first_name": firstName,
    "last_name": lastName,
  };
}
