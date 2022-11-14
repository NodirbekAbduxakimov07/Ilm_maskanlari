import 'dart:convert';

import 'package:ilm_maskanlari/modelilmizlab/categorymodel/CategoryModel.dart';
import 'package:http/http.dart' as http;
import 'package:ilm_maskanlari/modelilmizlab/categorymodel/Data.dart';

class ResponseCategory {
  final String base_url = "http://demo-ilm-izlab.devapp.uz/api/";
  static const headerCategory = {
    "Accept": "*/*",
    "User-Agent": "Thunder Client (https://www.thunderclient.com)",
    "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
  };
  List<Data> listData = [];
  Future<CategoryModel> getCategory() async {
    final response = await http.get(Uri.parse(base_url+"categories"),headers: headerCategory);
    if(response.statusCode == 200){
      var listData = CategoryModel.fromJson(json.decode(response.body));
      return listData;
    } else{
      throw Exception("error api");
    }
  }
}
var response = ResponseCategory();