//Only putting main method and basic theme rules here, main code in home.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) 
  //prevents issues with trying to switch to landscape 
  //very basic, simply forces portrait mode
      .then((_) {                                                       
    runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Contains most of the overarching theme rules and colors
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Color(0xFFC0F0E8),
          primaryColor: Color(0xFF80E1D1),
          canvasColor: Colors.transparent),
          fontFamily: "Montserrat",
      home: Home(),
    );
  }
}