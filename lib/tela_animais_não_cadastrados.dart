import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:clinica_veterinaria1/tela_perfil.dart';
import 'package:flutter/material.dart';
import 'package:clinica_veterinaria1/tela_inicial.dart';

class AnimalNaoCadastrado extends StatefulWidget {
  const AnimalNaoCadastrado({Key? key});

  @override
  State<AnimalNaoCadastrado> createState() => AnimalNaoCadastradoState();
}

class AnimalNaoCadastradoState extends State<AnimalNaoCadastrado> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = 'maria_h@outlook.com'; // Definir o e-mail fixo aqui
  }

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
                child: Column(children: [
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
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'maria_h@outlook.com',
                        labelText: "maria_h@outlook.com",
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
                  const SizedBox(height: 70.0),
                  const Center(
                      child: Text(
                        'Verificamos que ainda não possuem animais cadastrados',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 62, 52, 203),
                        ),
                      ),
                    ),
                ]),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CadastrarAnimal()),
                      );
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
                  if (_emailController.text.isNotEmpty  &&
                      _telefoneController.text.isNotEmpty) {
                    // Validar todos os campos preenchidos e exibir o modal de "Cadastro realizado com sucesso"
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Dados editados com sucesso!'),
                          actions: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 135,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromARGB(255, 62, 52,
                                          169), // Nova cor de fundo do botão
                                      minimumSize: Size(100,50), // Define o tamanho mínimo do botão
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const AnimalNaoCadastrado()),
                                      );
                                    },
                                    child: const Text('Voltar para o perfil'),
                                  ),
                                ),
                                const SizedBox(
                                    width: 8), // Espaçamento entre os botões
                                SizedBox(
                                  width: 135,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(148, 172, 29, 207), // Nova cor de fundo do botão
                                      minimumSize: Size(100,50), // Define o tamanho mínimo do botão
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()),
                                      );
                                    },
                                    child: const Text('Voltar para o início'),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    );
                  } else {
                    // Exibir mensagem de erro caso algum campo esteja vazio
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Erro no cadastro'),
                        content: const Text(
                            'Por favor, preencha todos os campos!'),
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
                  'Editar',
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