import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/category/Datata.dart';
import 'package:ilm_maskanlari/modelilmizlab/categorymodel/CategoryModel.dart';
import 'package:ilm_maskanlari/modelilmizlab/categorymodel/Data.dart';
import 'package:ilm_maskanlari/restapi/ilmizlabapi.dart';
import 'package:ilm_maskanlari/topCenter/TopCenterModel.dart';
import 'package:ilm_maskanlari/topcentermodel/Data.dart';
import 'package:ilm_maskanlari/topcentermodel/ModelTopCenter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imageList = [
    "http://demo-ilm-izlab.devapp.uz/upload/offer/image/oCoBs4gWldYWpLQaPUBT.jpg",
    "http://demo-ilm-izlab.devapp.uz/upload/offer/image/2y1g77sQ00tHNzHtxMqJ.jpg"
  ];
  final imageIcons = [
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/P2gLPQajVIEdCw1LcK6z.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/sA97Lk6HnS1SypZo9HRd.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/3VJmYvLUSjweHNDrGmZW.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/azaTCu9MFhoJnqWYYvxR.png",
    "http://demo-ilm-izlab.devapp.uz/upload/category/icon/3lYS8NB5o7wMyLjujnSF.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index,int pageIndex) =>
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageList[index])
                  )
                ),
              ),
              options: CarouselOptions(
                height: 180,
                viewportFraction: 0.8,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
              )
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            alignment: Alignment.centerLeft,
            child: Text("Kategoriyalar",
            style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          FutureBuilder<List<Datata>>(
            future: ilmapi.getCategories(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                             Container(
                               margin: EdgeInsets.only(right: 5),
                               width: 24,
                               height: 24,
                               child: Image.network(imageIcons[index],
                                   fit: BoxFit.cover,
                               color: Colors.deepPurple,
                               ),
                             ),
                              Text(snapshot.data![index].title,
                              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );}
              else {
                if(snapshot.hasError){
                  return Text("${snapshot.error}");
                } else {
                  return CircularProgressIndicator();
                }
              }

            },
          ),
          FutureBuilder<ModelTopCenter>(
            future: ilmapi.getTopCenter(),
            builder: (context, snapshot){
              var datas = snapshot.data?.data;
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data?.data?.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Text(
                        "${datas?[index].name}"
                          // "${snapshot.data?.data![index].phone}"
                      ),
                    );
                  },
                );
              } else {
                if (snapshot.hasError){
                  return Text("${snapshot.hasData}");
                } else {
                  return CircularProgressIndicator();
                }
              }
            },
          )
        ],
      ),
    );
  }
}
