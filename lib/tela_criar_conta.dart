import 'tela_login.dart'; // Importa o arquivo "tela_login.dart" para utilizar posteriormente
import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter

class CadastroPage extends StatelessWidget {
  // Cria a classe "CadastroPage" que herda de StatelessWidget
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
              height: 240,
              child: Image.asset(
                  "assets/logo.png"), // Exibe uma imagem do arquivo "assets/logo.png"
            ),
            Container(
              child: Text(
                'Criar conta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 68, 59, 167),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.person), // Ícone para o campo de e-mail
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
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.mail), // Ícone para o campo de senha
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
                labelText: "Senha",
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
                labelText: "Confirmar senha",
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
              height: 20,
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
                              LoginPage()), // Navegar para a tela Nova Senha  // Ação a ser executada ao clicar no botão
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
                    'Criar',
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
