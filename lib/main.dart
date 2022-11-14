import 'package:flutter/material.dart';
import 'package:ilm_maskanlari/models/JsonPlaceHolder.dart';
import 'package:ilm_maskanlari/screens/FirstScreen.dart';
import 'package:ilm_maskanlari/screens/IlmIzlabScreen.dart';
import 'package:ilm_maskanlari/screens/MainScreen.dart';
import 'package:ilm_maskanlari/screens/PlaceHolderScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FirstScreen()
    );
  }
}

