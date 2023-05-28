import 'package:flutter/material.dart';

//class MeuApp extends StatelessWidget {
//
//  //final title;
//
//  //const MeuApp({super.key, required this.title});
//
//
// @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "title",
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: CadastrarAnimal(),
//    );
//  }
//}

class CadastrarAnimal extends StatefulWidget {
  const CadastrarAnimal({super.key});

  @override
  State<CadastrarAnimal> createState() => CadastrarAnimalState();
}

class CadastrarAnimalState extends State<CadastrarAnimal> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  //TextEditingController _nomeController = TextEditingController();
  //TextEditingController _racaController = TextEditingController();
  //TextEditingController _especieController = TextEditingController();
  //TextEditingController _porteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String nome = "Maria";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 65, 203),
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
          child: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              nome,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('E-mail:'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'maria_h@outlook.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Telefone'),
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: _telefoneController,
                  decoration: InputDecoration(
                    hintText: 'Cadastre um telefone',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
