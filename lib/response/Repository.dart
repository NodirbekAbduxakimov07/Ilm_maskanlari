import 'dart:async';
import 'dart:convert';

import 'package:ilm_maskanlari/models/JsonPlaceHolder.dart';
import 'package:http/http.dart' as http;

class Repository {
  String BASE_URL = "https://jsonplaceholder.typicode.com/posts";
  Future<List<JsonPlaceHolder>> placeholder() async {
    final response = await http.get(Uri.parse(BASE_URL));
    if(response.statusCode == 200){
      var list = JsonPlaceHolder.listFromJson(json.decode(response.body));
      return list;
    } else {
      throw Exception("Error Json");
    }
  }
}
var repository = Repository();