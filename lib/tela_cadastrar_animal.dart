import 'package:flutter/material.dart';

class CadastrarAnimal extends StatefulWidget {
  const CadastrarAnimal({Key? key});

  @override
  State<CadastrarAnimal> createState() => CadastrarAnimalState();
}

class CadastrarAnimalState extends State<CadastrarAnimal> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  //TextEditingController _nomeController = TextEditingController();
  //TextEditingController _racaController = TextEditingController();
  //TextEditingController _especieController = TextEditingController();
  //TextEditingController _porteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String nome = "Maria";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 139, 65, 203),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40,
          ),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              nome,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 139, 65, 203),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 0.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('E-mail:'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'maria_h@outlook.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Telefone'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: _telefoneController,
                        decoration: const InputDecoration(
                          hintText: 'Cadastre um telefone',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      //padding: const EdgeInsets.all(0.0),
                      child: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Implemente o código para a ação do botão "edit" aqui
                        },
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Verificamos que ainda não possuem animais cadastrados",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 139, 65, 203),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0), // Espaçamento entre os widgets
                Container(
                  // Adicione os atributos desejados para o novo Container
                  child: const Text("Outro Container"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
