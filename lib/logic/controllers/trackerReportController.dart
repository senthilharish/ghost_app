import 'dart:typed_data';

import 'package:cyber_safe/data/service/trackerReportService.dart';

class TrackerReportController {
  final TrackerReportService _service = TrackerReportService();

  Future<Uint8List?> getReport(String domain) async {
    return await _service.fetchReportPdf(domain);
  }
}
