import 'package:flutter/material.dart';
import 'package:flutter_web_api_filmes/pages/filmes/filmes_page.dart';
import 'package:flutter_web_api_filmes/pages/login/login_page.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API Filmes',
      home: LoginPage(),
    );
  }
}
