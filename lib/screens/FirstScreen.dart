import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/bottomscreens/AddScreen.dart';
import 'package:ilm_maskanlari/bottomscreens/FavoriteScreen.dart';
import 'package:ilm_maskanlari/bottomscreens/HomeScreen.dart';
import 'package:ilm_maskanlari/bottomscreens/SearchScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {

  int  currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ILM_IZLAB"),
      ),
      bottomNavigationBar: buildBottomNavyBar(),
      body: routeBuildPages(),
    );
  }

  buildBottomNavyBar() {
    return BottomNavyBar(
      selectedIndex: currentIndex,
        onItemSelected: (index) => setState(() => currentIndex = index),
        items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                activeColor: Colors.purpleAccent
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Messages'),
                activeColor: Colors.pink
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.blue
            ),
        ],
    );
  }

  routeBuildPages() {
    switch (currentIndex){
      case 1: return SearchScreen();
      case 2: return AddScreen();
      case 3: return FavoriteScreen();
      case 0: return HomeScreen();
      default: return HomeScreen();

    }
  }
}
