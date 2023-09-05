import 'package:flutter/material.dart';
import 'package:flutter_api_project/screens/bookerpage.dart';
import 'package:flutter_api_project/screens/countriesPage.dart';
import 'package:flutter_api_project/screens/dogpage.dart';
import 'package:flutter_api_project/screens/jokespage.dart';
import 'package:flutter_api_project/screens/newspage.dart';
import 'package:flutter_api_project/screens/pokepage.dart';
import 'package:flutter_api_project/screens/userspage.dart';
import 'package:flutter_api_project/screens/weatherpage.dart';
import 'package:flutter_api_project/screens/spacepage.dart';
import 'package:flutter_api_project/screens/coingekopage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API Intergrations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UsersPage(),
    );
  }
}

