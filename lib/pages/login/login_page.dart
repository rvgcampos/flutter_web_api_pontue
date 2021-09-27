import 'package:flutter/material.dart';
import 'package:flutter_web_api_filmes/pages/login/login_controller.dart';
import 'package:flutter_web_api_filmes/pages/register/register_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 150,
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
                  controller: loginController.emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Email",
                    fillColor: Color(0xff8986E8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: loginController.passwordController,
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
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      loginController.login();
                    },
                    child: Text('Entrar'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff4741EB),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(RegisterPage());
                  },
                  child: Text(
                    'Não tem Conta? Cadastre-se',
                    style: TextStyle(
                      color: Color(0xff4741EB),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
