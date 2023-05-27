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
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'Seja bem-vindo!',
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
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52, 169), // Cor roxa
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(
                        double.infinity, 50.0), // Largura ajustável do botão
                  ),
                  child: Text(
                    'Login',
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
                      MaterialPageRoute(builder: (context) => CadastroPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 150, 57, 213),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(
                        double.infinity, 50.0), // Largura ajustável do botão
                  ),
                  child: Text(
                    'Cadastrar',
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
