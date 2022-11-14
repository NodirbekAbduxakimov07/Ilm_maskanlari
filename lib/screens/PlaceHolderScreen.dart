import 'package:flutter/material.dart';

import '../models/JsonPlaceHolder.dart';
import '../response/Repository.dart';
class PlaceHolderScreen extends StatefulWidget {
  const PlaceHolderScreen({Key? key}) : super(key: key);
  @override
  State<PlaceHolderScreen> createState() => _PlaceHolderScreenState();
}
class _PlaceHolderScreenState extends State<PlaceHolderScreen> {

   final JsonPlaceHolder jsonPlaceHolder =
   JsonPlaceHolder(body: "body", id: 0, title: "title", userId: 0);
   List<JsonPlaceHolder> jsonModel = [];

  void initState(){
    super.initState();
    addToList();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api")
      ),
      body: FutureBuilder<List<JsonPlaceHolder>>(
        future: repository.placeholder(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Text(snapshot.data![index].title),
                  );
                }
            );
          } else {
            if (snapshot.hasError) {
              return Text("${snapshot.hasError}");
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }
        }
        ),
      );
  }
  void addToList() {
    setState(() {
      repository.placeholder().then((value) =>
          jsonModel.addAll(value));
    });
  }
}
