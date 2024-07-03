// models/user.dart
class User {
  String fullName;
  String idNumber;
  String gender;
  String department;
  String password;

  User({
    required this.fullName,
    required this.idNumber,
    required this.gender,
    required this.department,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'gender': gender,
      'idNumber': idNumber,
      'department': department,
      'password': password,
    };
  }
}
