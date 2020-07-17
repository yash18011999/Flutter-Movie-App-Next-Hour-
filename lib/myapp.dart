import 'package:flutter/material.dart';
import 'package:next_hour/ui/category_page.dart';
import 'package:next_hour/ui/home_page.dart';
import 'package:next_hour/ui/login_page.dart';
import 'package:next_hour/ui/phone_login_screen.dart';
import 'package:next_hour/ui/movie_page.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Next Hour',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );

  }
}