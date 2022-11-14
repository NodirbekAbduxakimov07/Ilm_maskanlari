// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:ilm_maskanlari/models/JsonPlaceHolder.dart';
//
// class DioRepository {
// final String BASE_URL = "https://jsonplaceholder.typicode.com/posts";
// Future<List<JsonPlaceHolder>> getDio() async {
//   var dio = Dio();
//   final response = await dio.get(BASE_URL);
//   if (response.statusCode == 200){
//     return JsonPlaceHolder.listFromJson(response.data);
//   } else {
//     return response.data;
//   }
// }
// }