import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lms_alpha/Models/login_response.dart';
import 'package:lms_alpha/services/snak_bar.dart';

class AuthService {
  final String baseUrl = "http://api.pakistaniproduct.com/new_login";

  Future<LoginResponse?> login(String username, String password) async {
    final Map<String, dynamic> bodyData = {
      'username': username,
      'password': password,
    };

    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: bodyData.map((key, value) => MapEntry(key, value.toString())),
      );

      print('Request payload: ${json.encode(bodyData)}');
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        showSucessSnake("Login Successful");
        return LoginResponse.fromJson(json.decode(response.body));
      } else if (response.statusCode == 401) {
        showErrorSnake("Invalid username or password");
      } else if (response.statusCode >= 400 && response.statusCode < 500) {
        showWarningSnake("Client-side error occurred: ${response.statusCode}");
      } else if (response.statusCode >= 500) {
        showErrorSnake("Server error occurred: ${response.statusCode}");
      } else {
        showErrorSnake("Unexpected error occurred: ${response.statusCode}");
      }
    } catch (e) {
      showErrorSnake("Failed to connect: $e");
      print('Exception caught: $e');
    }
    return null;
  }
}
