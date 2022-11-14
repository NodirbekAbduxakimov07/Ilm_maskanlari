import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ilm_maskanlari/category/Datata.dart';
import 'package:ilm_maskanlari/topCenter/TopCenterModel.dart';
import 'package:ilm_maskanlari/topcentermodel/ModelTopCenter.dart';

class IlmIzlabApi {
  String BASE_URL = "http://demo-ilm-izlab.devapp.uz/api/";
  static const head = {
    "User-Agent": "Thunder Client (https://www.thunderclient.com)",
    "Accept": "aa",
    "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
  };
  static const headerCategory = {
    "Accept": "*/*",
    "User-Agent": "Thunder Client (https://www.thunderclient.com)",
    "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
  };
  static const headerTopCenter = {
  "Accept": "*/*",
  "User-Agent": "Thunder Client (https://www.thunderclient.com)",
  "token": "5sW6hFCXzbFa6ybSzfd4iFlgWidtLQ",
  "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25",
  };
  // Future<IlmIzlabModel> getApi() async {
  //   final response =
  //       await http.get(Uri.parse(BASE_URL + "offers"), headers: head);
  //   if (response.statusCode == 200) {
  //     var list = IlmIzlabModel.fromJson(json.decode(response.body));
  //     //var list = IlmIzlabModel.listFromJson(json.decode(response.body));
  //     return list;
  //   } else {
  //     throw Exception("Error api");
  //   }
  // }

  // Future<CategoryModel<List<Data>>> getCategory() async {
  //
  //   final response = await http.get(Uri.parse(BASE_URL+"categories"),
  //       headers: headerCategory);
  //   if(response.statusCode == 200){
  //     var listCategory = CategoryModel<List<Data>>.fromJson(json.decode(response.body));
  //     return listCategory;
  //   } else {
  //     return CategoryModel.listFromJson(json.decode(response.body));
  //   }
  // }
  Future<List<Datata>> getCategories() async {
    // const url = "http://demo-ilm-izlab.devapp.uz/api/categories";
    var response = await http.get(Uri.parse(BASE_URL + "categories"),
        headers: headerCategory);
    var jsonData = json.decode(response.body);
    var jsonArray = jsonData['data'];

    List<Datata> listData = [];
    for (var jsonDatata in jsonArray) {
      Datata datata = Datata(
          icon: jsonDatata['icon'],
          id: jsonDatata['id'],
          title: jsonDatata['title']);
      listData.add(datata);
    }
    return listData;
  }

  Future<List<TopCenterModel>> postTopCenter() async {
    var response = await http.post(Uri.parse(BASE_URL + "training_centers"), headers: {
      "Accept": "*/*",
      "User-Agent": "Thunder Client (https://www.thunderclient.com)",
      "token": "5sW6hFCXzbFa6ybSzfd4iFlgWidtLQ",
      "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
    });
    var jsonData = json.decode(response.body);
    var jsonArray = jsonData['data'];
    List<TopCenterModel> listTopCenter = [];

    for(var jsonElement in jsonArray){
      TopCenterModel topCenterModel = TopCenterModel(
          main_image: jsonElement["main_image"],
          monthly_payment_max: jsonElement['monthly_payment_max'],
          monthly_payment_min: jsonElement['monthly_payment_min'],
          name: jsonElement['name'],
          phone: jsonElement['phone'],
          rating: jsonElement['rating'],
          rating_count: jsonElement['rating_count']
      );

      listTopCenter.add(topCenterModel);
    }
    return listTopCenter;
  }
  
  Future<ModelTopCenter> getTopCenter() async {
    final response = await http.post(Uri.parse(BASE_URL+"training_centers")
        ,headers: headerTopCenter);
    if(response.statusCode == 200){
      var list = ModelTopCenter.fromJson(json.decode(response.body));
      return list;
    } else {
      throw Exception("Error api");
    }
  }
}

var ilmapi = IlmIzlabApi();
