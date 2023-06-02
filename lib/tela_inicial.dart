//import dos pacotes necessários para utilizar os recursos do Flutter e telas específicas do aplicativo
import 'package:clinica_veterinaria1/tela_ajuda.dart';
import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:clinica_veterinaria1/tela_consulta_emergencia.dart';
import 'package:clinica_veterinaria1/tela_consultar_agendamentos.dart';
import 'package:clinica_veterinaria1/tela_desmarcar_consulta.dart';
import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_profissional.dart';
import 'package:clinica_veterinaria1/tela_notificacao.dart';
import 'package:clinica_veterinaria1/tela_remarcar_consulta.dart';
import 'package:flutter/material.dart';
import 'tela_animais_não_cadastrados.dart';

//Classe estendendo StatelessWidget indicando que essa tela será sem estado
class HomeScreen extends StatelessWidget {
//O Scaffold é um widget que fornece uma estrutura básica para a tela
//incluindo a barra de aplicativo, o menu lateral e o corpo da tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//O appBar do Scaffold é uma propriedade que define a barra de aplicativo
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 57, 213),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notificacao()),
              ); // Lógica para tratar o clique no botão de notificações
            },
          ),
        ],
      ),
//A propriedade drawer do Scaffold define o menu lateral.
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
//cabeçalho ao menu lateral, representado por um Container roxo com altura de 100 pixels
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 57, 213),
                ),
              ),
//É adicionado um item de menu representado por um ListTile. Ele possui um ícone (ícone de perfil), um título ("Perfil")
//e uma função onTap que será executada quando o item for clicado.
              ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Perfil',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimalNaoCadastrado()),
                  ); // Lógica para tratar o clique no item 1 do menu
                },
              ),
//É adicionada uma linha separadora entre os itens do menu.
              Divider(color: Colors.black),
//Outro item do menu
              ListTile(
                leading: Icon(Icons.local_hospital, color: Colors.black),
                title: Text('Consulta de emergência',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConsultaEmergencia()),
                  ); // Lógica para tratar o clique no item 2 do menu
                },
              ),
// Linha separadora
              Divider(color: Colors.black),
//outro item do menu
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.black),
                title: Text('Marcar consulta',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MarcarConsulta()),
                  );
                },
              ),
// Linha separadora
              Divider(color: Colors.black),
//outro item do menu
              ListTile(
                leading: Icon(Icons.edit, color: Colors.black),
                title: Text('Remarcar consulta',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RemarcarConsulta()),
                  ); // Lógica para tratar o clique no item 3 do menu
                },
              ),
// Linha separadora
              Divider(color: Colors.black),
//outro item do menu
              ListTile(
                leading: Icon(Icons.cancel, color: Colors.black),
                title: Text('Desmarcar consulta',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DesmarcarConsulta()),
                  ); // Lógica para tratar o clique no item 3 do menu
                },
              ),
// Linha separadora
              Divider(color: Colors.black),
//outro item do menu
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.black),
                title: Text('Consultar agendamentos',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConsultarAgendamentos()),
                  ); // Lógica para tratar o clique no item 3 do menu
                },
              ),
// Linha separadora
              Divider(color: Colors.black),
//último item do menu
              ListTile(
                leading: Icon(Icons.help, color: Colors.black),
                title: Text('Ajuda',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ajuda()),
                  ); // Lógica para tratar o clique no item 3 do menu
                },
              ),
            ],
          ),
        ),
      ),
//texto exibido na parte superior da tela, com um estilo personalizado
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Conheça nossos serviços',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 62, 52, 169),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
//espaço vertical entre o texto e a linha abaixo dele.
            SizedBox(height: 20),
// linha é desenhada abaixo do texto. Ela possui altura de 1 pixel e uma cor personalizada
            Container(
              height: 1,
              color: Color.fromARGB(255, 150, 57, 213), // Cor da linha
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
//Texto
            Text(
              'Atendimentos clínicos especializados em:',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
//Texto
            Text(
              'Animais domésticos',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
// Espaçamento entre a linha e a imagem
            SizedBox(height: 10),
//Uma imagem é exibida usando um Container com uma altura e largura específicas
//A imagem é carregada a partir de um arquivo local.
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/animaisdomesticos.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
            Text(
              'Animais silvestres',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
// Espaçamento entre o texto e a imagem
            SizedBox(height: 10),
//inserção de outra imagem
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/animaissilvestres.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
            Text(
              'Também realizamos:',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
            Text(
              'Cirurgias',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
//espaçamento entre o testo e imagem
            SizedBox(height: 10),
            //inserção de outra imagem
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/cirurgias.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
// Espaçamento entre os textos
            SizedBox(height: 10),
            Text(
              'Raio-X',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
//inserção da última imagem
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/raiox.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
