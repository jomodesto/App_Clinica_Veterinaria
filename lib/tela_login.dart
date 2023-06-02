import 'package:clinica_veterinaria1/tela_inicial.dart'; // Importa o arquivo "tela_inicial.dart"
import 'tela_esqueci_minha_senha.dart';
import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter

class LoginPage extends StatelessWidget {
  // Cria a classe "LoginPage" que herda de StatelessWidget
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
            Container(
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 68, 59, 167),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.email), // Ícone para o campo de e-mail
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: const Color.fromARGB(96, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.lock), // Ícone para o campo de senha
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResetSenha()), // Navegar para a tela "ResetSenha"
                  );
                },
                child: Text(
                  "Esqueci minha senha",
                  textAlign: TextAlign.right,
                ),
              ),
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
                              HomeScreen()), // Navegar para a tela "HomeScreen"
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
                    'Entrar',
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
