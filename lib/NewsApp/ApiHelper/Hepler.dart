import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<Map> fatchdata() async {
    String api =
        "https://newsapi.org/v2/everything?q=apple&from=2024-08-12&to=2024-08-12&sortBy=popularity&apiKey=6ed2bf03baa24a918da63092568b372c";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      print(data);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fatchdata2() async {
    String api =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6ed2bf03baa24a918da63092568b372c";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      print(data);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fatchdata3() async {
    String api =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6ed2bf03baa24a918da63092568b372c'";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      print(data);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fatchdata4() async {
    String api =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=6ed2bf03baa24a918da63092568b372c";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      print(data);
      return data;
    } else {
      return {};
    }
  }
  Future<Map> fatchdata5() async {
    String api =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=6ed2bf03baa24a918da63092568b372c";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      print(data);
      return data;
    } else {
      return {};
    }
  }
}
