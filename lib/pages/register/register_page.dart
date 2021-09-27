import 'package:flutter/material.dart';
import 'package:flutter_web_api_filmes/pages/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            'logo.jpg',
            width: 200,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                TextField(
                  controller: registerController.nomeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Nome",
                    fillColor: Color(0xff8986E8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: registerController.emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "E-mail",
                    fillColor: Color(0xff8986E8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: registerController.passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Senha",
                    fillColor: Color(0xff8986E8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: registerController.passwordConfirmationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Confirmar Senha",
                    fillColor: Color(0xff8986E8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      registerController.cadastrar();
                    },
                    child: Text('Cadastrar'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff4741EB),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
