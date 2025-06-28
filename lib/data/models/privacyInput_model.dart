class PrivacyInputModel {
  final int permissionDangerLevel;
  final bool locationAccess;
  final double backgroundDataUsage;
  final int suspiciousLibraryCount;
  final bool usesAdId;
  final bool sendsDataToThirdParty;
  final int excessivePermissions;
  final double appSizeMb;
  final bool hasInAppBrowser;
  final bool startupAutorun;

  PrivacyInputModel({
    required this.permissionDangerLevel,
    required this.locationAccess,
    required this.backgroundDataUsage,
    required this.suspiciousLibraryCount,
    required this.usesAdId,
    required this.sendsDataToThirdParty,
    required this.excessivePermissions,
    required this.appSizeMb,
    required this.hasInAppBrowser,
    required this.startupAutorun,
  });

  Map<String, dynamic> toJson() => {
        "permission_danger_level": permissionDangerLevel,
        "location_access": locationAccess,
        "background_data_usage": backgroundDataUsage,
        "suspicious_library_count": suspiciousLibraryCount,
        "uses_ad_id": usesAdId,
        "sends_data_to_third_party": sendsDataToThirdParty,
        "excessive_permissions": excessivePermissions,
        "app_size_mb": appSizeMb,
        "has_in_app_browser": hasInAppBrowser,
        "startup_autorun": startupAutorun,
      };
}
