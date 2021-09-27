import 'package:flutter/material.dart';

class FilmesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
        centerTitle: true,
        backgroundColor: Color(0xff4741EB),
      ),
      // body: GetX<FilmeController>(
      //   builder: (controller) {
      //     return ListView(
      //       children: controller.filmes.map(
      //         (filme) {
      //           return Text(filme.nome!);
      //         },
      //       ).toList(),
      //     );
      //   },
      // ),
    );
  }
}
