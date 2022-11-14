import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/modelilmizlab/categorymodel/Data.dart';
import 'package:ilm_maskanlari/modelilmizlab/responsecategory/ResponseCategory.dart';

import '../modelilmizlab/categorymodel/CategoryModel.dart';
import '../restapi/ilmizlabapi.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CategoryModel>(
      future: response.getCategory(),
      builder: (context,snapshot){
        return ListView.builder(
          itemCount: snapshot.data?.data?.length,
          itemBuilder: (context,index){
            if(snapshot.hasData){
              return Card(
              child: Text("${snapshot.data?.data![index].title}"
              )
              );
            } else {
              if(snapshot.hasError){
                return Text("Error code");
              } else {
                return CircularProgressIndicator(
                  backgroundColor: Colors.deepOrangeAccent,
                );
              }
            }
          },
        );
      },
    );
  }
}
