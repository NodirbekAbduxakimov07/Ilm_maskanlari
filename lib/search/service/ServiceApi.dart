// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:ilm_maskanlari/search/model/Dataaa.dart';
// import 'package:ilm_maskanlari/search/model/Modelll.dart';
// class {
//   void seviceapi() async {
//     List<Data> dataList = [];
//     var urii = Uri.parse("http://demo-ilm-izlab.devapp.uz/api/categories");
//     var response = await http.get(urii);
//     var list = CategoryModelll<Data>.fromJson(jsonDecode(response.body), (data) {
//       List<Data> dl = data.map((e) => Data.fromJson(e)).toList();
//       return dl;
//     });
//     setState((){
//       if(list.data != null){
//         dataList = list.data!;
//       }
//     });
//   }
// }