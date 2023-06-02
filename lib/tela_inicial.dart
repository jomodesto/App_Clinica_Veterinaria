import 'package:clinica_veterinaria1/tela_ajuda.dart';
import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:clinica_veterinaria1/tela_consulta_emergencia.dart';
import 'package:clinica_veterinaria1/tela_consultar_agendamentos.dart';
import 'package:clinica_veterinaria1/tela_desmarcar_consulta.dart';
import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_profissional.dart';
import 'package:clinica_veterinaria1/tela_remarcar_consulta.dart';
import 'package:flutter/material.dart';
import 'tela_animais_não_cadastrados.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 57, 213),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Lógica para tratar o clique no botão de notificações
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 57, 213),
                ),
              ),
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
              Divider(color: Colors.black), // Linha separadora
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
              Divider(color: Colors.black), // Linha separadora
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

              Divider(color: Colors.black), // Linha separadora
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
              Divider(color: Colors.black), // Linha separadora
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
              Divider(color: Colors.black), // Linha separadora
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
              Divider(color: Colors.black), // Linha separadora
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
            SizedBox(height: 20), // Espaçamento entre o texto e a linha
            Container(
              height: 1,
              color: Color.fromARGB(255, 150, 57, 213), // Cor da linha
            ),
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Atendimentos clínicos especializados em:',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Animais domésticos',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Espaçamento entre a linha e a imagem
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
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Animais silvestres',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Também realizamos:',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Cirurgias',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10), // Espaçamento entre os textos
            Text(
              'Raio-X',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
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
