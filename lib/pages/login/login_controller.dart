import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_web_api_filmes/pages/filmes/filmes_page.dart';
import 'package:flutter_web_api_filmes/utils/Utils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs();
  final passwordController = TextEditingController().obs();
  var url = Uri.parse(Utils.base_url + 'login');

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('token') != null) {
      Get.to(FilmesPage());
    }
  }

  void login() async {
    print('login');
    if (emailController.text != null && passwordController.text != null) {
      var response = await http.post(url, body: {
        'email': emailController.text,
        'password': passwordController.text
      });
      var respostaBody = jsonDecode(response.body);
      var token = respostaBody['token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
      print(prefs.getString('token'));
      if (prefs.getString('token') != null) {
        Get.to(FilmesPage());
      }
      // print('${respostaBody['token']}');
    }
  }
}
