// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ilm_maskanlari/model/Data.dart';
// import 'package:ilm_maskanlari/model/OffersModel.dart';
// import 'package:ilm_maskanlari/models/JsonPlaceHolder.dart';
// import 'package:ilm_maskanlari/response/DioRepository.dart';
// import 'package:ilm_maskanlari/restapi/RestApi.dart';
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//
//   final DioRepository dioRepository = DioRepository();
//   List<JsonPlaceHolder> list = [];
//  // final RestApi restApi = RestApi();
//   List<OffersModel> offerModel = [];
//   List<Data> offer = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   //  loadRestApi();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Ilm manbalari"),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.indigo,Colors.lightBlue],
//               begin: Alignment.bottomRight,
//               end: Alignment.bottomCenter
//             ),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: list.length,
//           itemBuilder: (BuildContext context, int index){
//         return Card(
//           child: Text(list[index].title),
//         );
//       })
//       // FutureBuilder(
//       //   future: dioRepository.getDio(),
//       //   builder: (context,snapshot){
//       //     if(snapshot.hasData){
//       //       return ListView.builder(
//       //           itemBuilder: (BuildContext context, int index){
//       //          return Card(
//       //            child: Text(list[index].title),
//       //          );
//       //       });
//       //     } else {
//       //       if(snapshot.hasError){
//       //         return Text("${snapshot.hasError}");
//       //       } else {
//       //         return CircularProgressIndicator();
//       //       }
//       //     }
//       //   },
//       // )
//     );
//   }
//
//   void loadRestApi() {
//     dioRepository.getDio().then((value) =>
//     list.addAll(value));
//   }
// }
