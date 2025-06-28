import 'dart:convert';
import 'package:cyber_safe/data/models/privacyInput_model.dart';
import 'package:http/http.dart' as http;
import '../models/privacy_result_model.dart';

class PrivacyApiService {
  final String apiUrl = "https://mobile-privacy-api.onrender.com/predict";
    
  Future<PrivacyResultModel?> getPrivacyScore(PrivacyInputModel input) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(input.toJson()),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return PrivacyResultModel.fromJson(jsonData);
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }
}
