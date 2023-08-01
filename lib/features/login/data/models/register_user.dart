import 'dart:convert';

RegisterUser registerUserFromJson(String str) => RegisterUser.fromJson(json.decode(str));

String registerUserToJson(RegisterUser data) => json.encode(data.toJson());

class RegisterUser {
  String email;
  String password;
  int schoolNumber;
  String schoolName;
  String studentClass;

  RegisterUser({
    required this.email,
    required this.password,
    required this.schoolNumber,
    required this.schoolName,
    required this.studentClass,
  });

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
    email: json["email"],
    password: json["password"],
    schoolNumber: json["school_number"],
    schoolName: json["school_name"],
    studentClass: json["student_class"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "school_number": schoolNumber,
    "school_name": schoolName,
    "student_class": studentClass,
  };
}
