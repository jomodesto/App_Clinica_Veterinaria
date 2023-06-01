import 'package:flutter/material.dart';

class CadastrarAnimal extends StatefulWidget {
  const CadastrarAnimal({Key? key});

  @override
  State<CadastrarAnimal> createState() => CadastrarAnimalState();
}

class CadastrarAnimalState extends State<CadastrarAnimal> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  bool _adicionarAnimais = false;
  String _nomeAnimal = '';
  String _especieAnimal = '';
  String _porteAnimal = '';
  String _racaAnimal = '';
  bool _cadastroRealizado = false;

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
                          child: Icon(
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
                            borderSide: BorderSide(
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal:
                                  16.0), // Ajuste o valor do padding conforme necessário
                        ),
                        style: TextStyle(
                          fontSize: 16.0,
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
                                  borderSide: BorderSide(
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
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 16.0),
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
                    const SizedBox(height: 20.0),
                    if (_adicionarAnimais) ...[
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Cadastrar Animal',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 62, 52, 203),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 150, 57, 213),
                        thickness: 1,
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Nome",
                          hintText: 'Informe o nome do animal',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _nomeAnimal = value;
                          });
                        },
                      ),
                      const SizedBox(height: 10.0),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Espécie',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                        ),
                        items:
                            ['Cachorro', 'Gato', 'Outro'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _especieAnimal = value!;
                          });
                        },
                        value:
                            _especieAnimal.isNotEmpty ? _especieAnimal : null,
                      ),
                      const SizedBox(height: 10.0),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Porte',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                        ),
                        items:
                            ['Pequeno', 'Médio', 'Grande'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _porteAnimal = value!;
                          });
                        },
                        value: _porteAnimal.isNotEmpty ? _porteAnimal : null,
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Raça",
                          hintText: 'Informe a raça do animal',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _racaAnimal = value;
                          });
                        },
                      ),
                      const SizedBox(height: 20.0),
                    ],
                    SizedBox(height: 70),
                    Center(
                      child: Text(
                        _adicionarAnimais
                            ? ""
                            : 'Verificamos que ainda não possuem animais cadastrados',
                        style: const TextStyle(
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
            top: MediaQuery.of(context).size.height / 1.3 - 60,
            left: 20.0,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _adicionarAnimais = true;
                    });
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
                  if (_emailController.text.isNotEmpty &&
                      _telefoneController.text.isNotEmpty &&
                      _nomeAnimal.isNotEmpty &&
                      _especieAnimal.isNotEmpty &&
                      _porteAnimal.isNotEmpty &&
                      _racaAnimal.isNotEmpty) {
                    // Validar todos os campos preenchidos e exibir o modal de "Cadastro realizado com sucesso"
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Cadastro realizado com sucesso'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Exibir mensagem de erro caso algum campo esteja vazio
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Erro no cadastro'),
                        content: const Text('Por favor, preencha todos os campos obrigatórios.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 62, 52, 169), // Cor roxa
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize:
                      const Size(200.0, 50.0), // Largura e altura do botão
                ),
                child: const Text(
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
    );
  }
}
