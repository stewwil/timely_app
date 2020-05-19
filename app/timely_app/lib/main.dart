import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //this is a simple way to force portrait mode
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Color(0xFFC0F0E8),
            //add color description for reference
          primaryColor: Color(0xFF80E1D1),
          //add color description for reference
          fontFamily: "Montserrat",
            //good basic font
          canvasColor: Colors.transparent),
      home: Home(),
    );
  }
}