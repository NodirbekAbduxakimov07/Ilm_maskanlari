// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:ilm_maskanlari/bottomscreens/AddScreen.dart';
// import 'package:ilm_maskanlari/bottomscreens/FavoriteScreen.dart';
// import 'package:ilm_maskanlari/bottomscreens/HomeScreen.dart';
// import 'package:ilm_maskanlari/bottomscreens/SearchScreen.dart';
// import 'package:ilm_maskanlari/model/Data.dart';
// import 'package:ilm_maskanlari/modelilmizlab/IlmIzlabModel.dart';
// import 'package:ilm_maskanlari/restapi/ilmizlabapi.dart';
//
// class IlmzlabScreen extends StatefulWidget {
//   const IlmzlabScreen({Key? key}) : super(key: key);
//
//   @override
//   State<IlmzlabScreen> createState() => _IlmzlabScreenState();
// }
//
// class _IlmzlabScreenState extends State<IlmzlabScreen> {
//   int index = 0;
//   final screens = [
//     HomeScreen(),
//     SearchScreen(),
//     AddScreen(),
//     FavoriteScreen()
//   ];
//   List<String> imageList = [
//     "http://demo-ilm-izlab.devapp.uz/upload/offer/image/oCoBs4gWldYWpLQaPUBT.jpg",
//     "http://demo-ilm-izlab.devapp.uz/upload/offer/image/2y1g77sQ00tHNzHtxMqJ.jpg"
//   ];
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading();
//   }
//
//   void _loading() {
//     setState(() async {
//       _isLoading = true;
//     });
//     Image.network(imageList[0]);
//     setState(() {
//       _isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("ILM_IZLAB"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.add, color: Colors.white),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: AnimatedBottomNavigationBar(
//           icons: iconList(),
//           activeIndex: index,
//           gapLocation: GapLocation.center,
//           activeColor: Colors.deepPurple,
//           notchSmoothness: NotchSmoothness.verySmoothEdge,
//           leftCornerRadius: 32,
//           rightCornerRadius: 32,
//           onTap: (index) => setState(() => this.index = index),
//         ),
//         body: Container(
//           width: double.infinity,
//           child: CarouselSlider.builder(
//             itemCount: imageList.length,
//             itemBuilder:
//                 (BuildContext context, int itemIndex, int pageViewIndex) =>
//                     Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   shape: BoxShape.rectangle,
//                   image: DecorationImage(
//                       image: NetworkImage(imageList[itemIndex]))),
//             ),
//             options: CarouselOptions(
//                 height: 180,
//                 initialPage: 0,
//                 viewportFraction: 0.8,
//                 autoPlay: true,
//                 enableInfiniteScroll: true,
//                 enlargeCenterPage: true),
//           ),
//         ));
//   }
//
//   bottomNavIndex(int index) {
//     if (index == iconList()[0]) {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const HomeScreen()));
//     } else if (index == iconList()[1]) {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const SearchScreen()));
//     }
//   }
// }
//
// iconList() {
//   [Icons.home, Icons.search, Icons.build, Icons.favorite];
// }
