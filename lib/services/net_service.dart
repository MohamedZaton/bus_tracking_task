import 'dart:convert';

import 'package:http/http.dart' as http;

class NetService {
  static Future fetchJsonData(String url) {
    return http
        .get(Uri.parse(url))
        .then((response) => response.statusCode == 200 ? response : null)
        .catchError((err) => print("server error !!!" + err));
  }
}
