import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared.dart';

import 'pages/pages.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePages()
    );
  }
}