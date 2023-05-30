import 'package:flutter/material.dart';

class CadastrarAnimal extends StatefulWidget {
  const CadastrarAnimal({Key? key});

  @override
  State<CadastrarAnimal> createState() => CadastrarAnimalState();
}

class CadastrarAnimalState extends State<CadastrarAnimal> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

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
      body: Stack(
        children: [
          ListView(
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
                          child: const Icon(
                            Icons.person,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'maria_h@outlook.com',
                          labelText: "E-mail",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 139, 65, 203),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 12.0, // Defina o tamanho de fonte desejado
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              controller: _telefoneController,
                              decoration: InputDecoration(
                                labelText: "Telefone",
                                hintText: 'Cadastre um telefone',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 139, 65, 203),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 12.0, // Defina o tamanho de fonte desejado
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                // Implemente o código para a ação do botão "edit" aqui
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    const Center(
                      child: Text(
                        "Verificamos que ainda não possuem animais cadastrados",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 62, 52, 203),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.5 - 60,
            left: 40.0,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // Implemente o código para a ação do botão "Adicionar" aqui
                  },
                  mini: true, // Define o botão como miniatura
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color.fromARGB(255, 62, 52, 203)),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Color.fromARGB(255, 62, 52, 203),
                  ),
                ),
                const SizedBox(width: 2),
                const Text(
                  'Cadastrar animais',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Implemente o código para a ação do botão "Entrar" aqui
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 62, 52, 169), // Cor roxa
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(200.0, 50.0), // Largura e altura do botão
                ),
                child: const Text(
                  'Entrar',
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
    );
  }
}
