class PrivacyResultModel {
  final double privacyScore;
  final String dataTheftRisk;
  final double malwareLikelihood;
  final String trustRating;
  final List<String> mainConcerns;

  PrivacyResultModel({
    required this.privacyScore,
    required this.dataTheftRisk,
    required this.malwareLikelihood,
    required this.trustRating,
    required this.mainConcerns,
  });

  factory PrivacyResultModel.fromJson(Map<String, dynamic> json) {
    return PrivacyResultModel(
      privacyScore: json['privacy_score'],
      dataTheftRisk: json['data_theft_risk'],
      malwareLikelihood: json['malware_likelihood'],
      trustRating: json['trust_rating'],
      mainConcerns: List<String>.from(json['main_concerns']),
    );
  }
}
