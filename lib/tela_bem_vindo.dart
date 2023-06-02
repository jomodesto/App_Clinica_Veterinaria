import 'tela_login.dart';
import 'tela_criar_conta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BemVindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.6, 0.8, 1.0],
            colors: [
              Color.fromARGB(255, 248, 237, 248),
              Color.fromARGB(255, 196, 103, 224),
              Color.fromARGB(255, 192, 108, 218),
              Color.fromARGB(255, 104, 112, 236),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 250,
              child: Image.asset("assets/logo.png"), // Exibe a imagem do logo
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'Seja bem-vindo!', // Mensagem de boas-vindas
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 68, 59, 167),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginPage()), // Navega para a tela de login ao pressionar o botão
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52,
                        169), // Define a cor de fundo do botão de login
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity,
                        50.0), // Define o tamanho mínimo do botão
                  ),
                  child: Text(
                    'Login', // Texto do botão de login
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CadastroPage()), // Navega para a tela de cadastro ao pressionar o botão
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 150, 57,
                        213), // Define a cor de fundo do botão de cadastro
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity,
                        50.0), // Define o tamanho mínimo do botão
                  ),
                  child: Text(
                    'Cadastrar', // Texto do botão de cadastro
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
