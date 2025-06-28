import 'dart:typed_data';
import 'package:http/http.dart' as http;

class TrackerReportService {
  Future<Uint8List?> fetchReportPdf(String domain) async {
    try {
      final encodedDomain = Uri.encodeQueryComponent(domain.trim());
      final url = Uri.parse("https://tracker-report.onrender.com/analyze?domain=$encodedDomain");

      final response = await http.get(url);

      if (response.statusCode == 200 &&
          response.headers['content-type'] == 'application/pdf') {
        return response.bodyBytes;
      } else {
        print("Invalid response: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error fetching report: $e");
      return null;
    }
  }
}
  