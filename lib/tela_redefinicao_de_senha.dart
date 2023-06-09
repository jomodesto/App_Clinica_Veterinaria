import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tela_login.dart'; // Importa o arquivo "tela_login.dart"

class NewSenha extends StatelessWidget {
  // Cria a classe "NewSenha" que herda de StatelessWidget
  @override
  Widget build(BuildContext context) {
    // Sobrescreve o método build para construir a interface da página
    return Scaffold(
      // Retorna um Scaffold, que é um layout básico para a página
      appBar: AppBar(
        // Define a barra de aplicativo
        backgroundColor: Color.fromARGB(
            255, 248, 237, 248), // Define a cor de fundo da barra de aplicativo
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
          ),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        // Define o corpo da página
        padding: EdgeInsets.only(
            top: 10,
            left: 40,
            right: 40), // Define o preenchimento interno do Container
        decoration: BoxDecoration(
          // Define a decoração do Container
          gradient: LinearGradient(
            // Cria um gradiente para o fundo
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
          // Cria um ListView para os elementos filhos
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 250,
              child: Image.asset(
                  "assets/logo.png"), // Exibe uma imagem do arquivo "assets/logo.png"
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enviamos uma nova senha para seu E-mail. Por favor redefina a senha.", // Texto informativo
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText:
                    "Digite a senha recebida.", // Rótulo do campo de senha
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.lock), // Ícone para o campo de e-mail
              ),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Nova senha", // Rótulo do campo de nova senha
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.lock), // Ícone para o campo de senha
              ),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText:
                    "Confirmar nova senha", // Rótulo do campo de confirmação de senha
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.lock), // Ícone para o campo de senha
              ),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginPage()), // Navegar para a tela de login (LoginPage) // Ação a ser executada ao clicar no botão
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52, 169), // Cor roxa
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(
                        double.infinity, 50.0), // Largura ajustável do botão
                  ),
                  child: Text(
                    'Redefinir',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
