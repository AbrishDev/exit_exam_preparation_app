import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> signup(String fullName, String gender, String idNumber,
      String department, String password) async {
        
    try {
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/users/register'), // Use correct URL
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'fullName': fullName,
          'gender': gender,
          'idNumber': idNumber,
          'department': department,
          'password': password,
        }),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print('User signed up: ${data['user']}');
      } else {
        print('Failed to sign up with status code: ${response.statusCode}');
        final errors = jsonDecode(response.body);
        print('Error: ${errors['message'] ?? errors['errors'] ?? 'Unknown error'}');
      }
    } catch (e) {
      print('Error occurred during signup: $e');
    }
  }

  Future<Map<String, dynamic>> signIn(String idNumber, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/users/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'idNumber': idNumber,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return {'success': true, 'data': data};
      } else {
        final errors = jsonDecode(response.body);
        return {'success': false, 'message': errors['errors'] ?? 'Unknown error'};
      }
    } catch (e) {
      print('Error occurred during login: $e');
      return {'success': false, 'message': 'Error occurred during login. Please try again later.'};
    }
  }

}
