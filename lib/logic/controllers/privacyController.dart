
import 'package:cyber_safe/data/models/privacyInput_model.dart';
import 'package:cyber_safe/data/models/privacy_result_model.dart';
import 'package:cyber_safe/data/service/privacy_api.dart';

class PrivacyController {
  final PrivacyApiService _apiService = PrivacyApiService();

  Future<PrivacyResultModel?> analyzeAppPrivacy(PrivacyInputModel input) {
    return _apiService.getPrivacyScore(input);
  }
}
