import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screenWrapper.dart';
import 'package:learning_app/screens/home/home_screen.dart';
import 'package:learning_app/screens/profile/profile_screen.dart';

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
      title: 'Learning App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: darkBlue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: darkGray),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: ScreenWrapper(),
    );
  }
}
