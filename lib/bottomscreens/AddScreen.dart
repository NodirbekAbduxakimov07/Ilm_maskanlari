import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/search/model/Dataaa.dart';
import 'package:http/http.dart' as http;

import '../restapi/ilmizlabapi.dart';
import '../search/model/Modelll.dart';
import '../topcentermodel/ModelTopCenter.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  List<Data> dataList = [];
  _seviceapi() async {
    List<Data> dataList = [];
    var urii = Uri.parse("http://demo-ilm-izlab.devapp.uz/api/categories");
    var response = await http.get(urii);

    var listresponse = CategoryModelll<Data>.fromJson(json.decode(response.body), (data) {
      List<Data> dl = data.map((e) => Data.fromJson(e)).toList();
      return dl;
    });
    setState((){
      if(listresponse.data != null){
        dataList = listresponse.data!;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context,index){
        return Card(
          child: Text("${dataList[index].title}"),
        );
      },
    );
    //   FutureBuilder<ModelTopCenter>(
    //   future: ilmapi.getTopCenter(),
    //   builder: (context, snapshot){
    //     if(snapshot.hasData){
    //       return ListView.builder(
    //         itemCount: snapshot.data?.data?.length,
    //         itemBuilder: (context, index){
    //           return Card(
    //             child: Text("${snapshot.data?.data![index].name}"),
    //           );
    //         },
    //       );
    //     } else {
    //       if (snapshot.hasError){
    //         return Text("${snapshot.hasData}");
    //       } else {
    //         return CircularProgressIndicator();
    //       }
    //     }
    //   },
    // );
  }
}
