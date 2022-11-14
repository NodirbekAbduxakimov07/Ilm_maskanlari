import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/category/CategoriesModel.dart';
import 'package:ilm_maskanlari/category/Datata.dart';
import 'package:http/http.dart' as http;

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final imageIcons = [
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/P2gLPQajVIEdCw1LcK6z.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/sA97Lk6HnS1SypZo9HRd.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/3VJmYvLUSjweHNDrGmZW.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/azaTCu9MFhoJnqWYYvxR.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/3lYS8NB5o7wMyLjujnSF.png"
  ];
  static const headerCategory = {
    "Accept": "*/*",
    "User-Agent": "Thunder Client (https://www.thunderclient.com)",
    "key": "6kUv96UmlnH5xeQkFgY2YMZS45Sd25"
  };
  Future<List<Datata>> getCategories() async {
    const url = "http://demo-ilm-izlab.devapp.uz/api/categories";
    var response = await http.get(Uri.parse(url),headers: headerCategory);
    var jsonData = json.decode(response.body);
    var jsonArray = jsonData['data'];

    List<Datata> datat = [];
    for(var jsonDatata in jsonArray){
      Datata datata = Datata(icon: jsonDatata['icon'], id: jsonDatata['id'], title: jsonDatata['title']);
      datat.add(datata);
    }
    return datat;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Datata>>(
        future: getCategories(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            width: 24,
                            height: 24,
                            child: Image.network(imageIcons[index],fit: BoxFit.cover),
                          ),
                          Text(snapshot.data![index].title)
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            if (snapshot.hasError){
              return Text("${snapshot.hasError}");
            } else {
              return CircularProgressIndicator();
            }
          }
        },
      ),
    );
  }
}
