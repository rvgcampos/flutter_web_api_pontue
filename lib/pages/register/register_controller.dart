import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_web_api_filmes/pages/filmes/filmes_page.dart';
import 'package:flutter_web_api_filmes/utils/Utils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  final nomeController = TextEditingController().obs();
  final emailController = TextEditingController().obs();
  final passwordController = TextEditingController().obs();
  final passwordConfirmationController = TextEditingController().obs();
  var url = Uri.parse(Utils.base_url + 'register');

  void cadastrar() async {
    print('cadastrar');
    if (emailController.text != null &&
        passwordController.text != null &&
        emailController.text != null &&
        passwordConfirmationController.text != null) {
      var response = await http.post(url, body: {
        'name': nomeController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'password_confirmation': passwordConfirmationController.text
      });
      var respostaBody = jsonDecode(response.body);
      var token = respostaBody['token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
      if (prefs.getString('token') != null) {
        Get.to(FilmesPage());
      }
      // print('${respostaBody['token']}');
    }
  }
}
