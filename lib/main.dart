import 'package:flutter/material.dart';
import 'package:weebreader/constants.dart';
import 'package:weebreader/views/HomeScreen.dart';
import 'package:weebreader/views/Register.dart';
import 'package:weebreader/views/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Resapp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
          primaryColor: Color.fromRGBO(18, 18, 18, 1),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen());
  }
}
