// // import 'dart:convert';
// //
// // import '../model/Data.dart';
// // import '../model/OffersModel.dart';
// // import 'package:http/http.dart' as http;
// //
// // class RestApi {
// //   String BASE_URL = "http://demo-ilm-izlab.devapp.uz/api/";
// //   Future<OffersModel<List<Data>>> getApi  {
// //     return http.get(BASE_URL + "offers").then((value) {
// //       if (value.statusCode == 200) {
// //         final response =
// //         return
// //   }
// //   });
// // }
// // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:http_logger/http_logger.dart';
// import 'package:http_middleware/http_middleware.dart';
// import 'package:ilm_maskanlari/model/Data.dart';
//
// import '../model/OffersModel.dart';
//
// class RestApi {
//   String BASE_URL = "http://demo-ilm-izlab.devapp.uz/api/";
//
//   // Map< String, String> get headers => {
//   // static const headers = {
//   // "User-Agent: Thunder Client (https://www.thunderclient.com)",
//   // "Accept: aa",
//   // "key: 6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
//   // };
//
//   static const headers = {
//   "User-Agent: Thunder Client (https://www.thunderclient.com)",
//   "Accept: aa",
//   "key: 6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
//   };
//
//   Future<OffersModel<List<Data>>> getOfferList() async {
//     //
//     // var headers = {
//     //   "User-Agent: Thunder Client (https://www.thunderclient.com)",
//     //   "Accept: aa",
//     //   "key: 6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
//     // };
//
//     HttpWithMiddleware httpClient = HttpWithMiddleware.build(middlewares: [
//       HttpLogger(logLevel: LogLevel.HEADERS),
//       HttpLogger(logLevel: LogLevel.BODY),
//     ]);
//     try{
//       final response =await httpClient.get(BASE_URL+"offers",
//       headers: headers);
//       if(response.statusCode == 200){
//         var listFromJson = OffersModel.listFromJson(json.decode(response.body));
//         return listFromJson;
//       } else {
//         return List.empty();
//       }
//     }
//     catch(extension){
//       return List.empty();
//     }
//   }
// }
// var restApi = RestApi();
