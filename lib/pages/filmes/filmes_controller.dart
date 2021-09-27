import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_web_api_filmes/models/Filme.dart';
import 'package:flutter_web_api_filmes/pages/filmes/filmes_page.dart';
import 'package:flutter_web_api_filmes/utils/Utils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FilmeController extends GetxController {
  var url = Uri.parse(Utils.base_url + 'filmes');

  var filmes = <Filme>[].obs();

  @override
  void onInit() async {
    super.onInit();
    await getFilmes();
    print(filmes);
  }

  Future<void> getFilmes() async {
    var response = await http.get(url);
    var respostaBody = jsonDecode(response.body);
    for (var filme in respostaBody) {
      filmes.add(Filme.fromJson(filme));
    }
  }
}
