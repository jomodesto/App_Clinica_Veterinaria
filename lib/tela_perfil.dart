import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:clinica_veterinaria1/tela_inicial.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key});

  @override
  State<Perfil> createState() => PerfilState();
}

class PerfilState extends State<Perfil> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _nomeAnimalController = TextEditingController();
  TextEditingController _racaAnimalController = TextEditingController();
  bool _isEditing = true;
  String _selectedSpecies = 'Cachorro';
  String _selectedSize = 'Pequeno';

  @override
  void initState() {
    super.initState();
    _emailController.text = 'maria_h@outlook.com'; // Definir o e-mail fixo aqui
    _telefoneController.text = '24924249374';
    _nomeAnimalController.text = 'Fenrir';
    _racaAnimalController.text = 'SDR';
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
                            enabled: !_isEditing,
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
                                horizontal: 16.0,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                    SizedBox(height: 16.0),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        enabled: !_isEditing,
                        controller: _telefoneController,
                        decoration: InputDecoration(
                          hintText: '24924249374',
                          labelText: 'Telefone',
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
                            horizontal: 16.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Animais Cadastrados',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 62, 52, 203),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 150, 57, 213),
                      thickness: 1,
                    ),
                    SizedBox(height: 20),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: TextField(
                        enabled: !_isEditing,
                        controller: _nomeAnimalController,
                        decoration: InputDecoration(
                          hintText: 'Nome do animal',
                          labelText: 'Nome',
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
                            horizontal: 16.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: _selectedSpecies,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedSpecies = newValue!;
                          });
                        },
                        items: <String>['Cachorro', 'Gato', 'Coelho', 'Outro']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            enabled: !_isEditing,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          labelText: 'Espécie',
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
                            horizontal: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: _selectedSize,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedSize = newValue!;
                          });
                        },
                        items: <String>['Pequeno', 'Médio', 'Grande']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            enabled: !_isEditing,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          labelText: 'Porte',
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
                            horizontal: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Theme(
                      data: ThemeData(
                        primaryColor: Color.fromARGB(255, 139, 65, 203),
                      ),
                      child: TextField(
                        enabled: !_isEditing,
                        controller: _racaAnimalController,
                        decoration: InputDecoration(
                          hintText: 'Raça do animal',
                          labelText: 'Raça',
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
                            horizontal: 16.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16.0,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastrarAnimal()),
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
                  'Cadastrar mais animais',
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
                  // Validar todos os campos preenchidos e exibir o modal de "Cadastro realizado com sucesso"
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title:
                            const Text('Dados do animal editados com sucesso!'),
                        actions: [
                          Row(
                            children: [
                              SizedBox(
                                width: 135,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color.fromARGB(255, 62, 52,
                                        169), // Nova cor de fundo do botão
                                    minimumSize: Size(100,
                                        50), // Define o tamanho mínimo do botão
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Perfil()),
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
                                    primary: Color.fromARGB(148, 172, 29,
                                        207), // Nova cor de fundo do botão
                                    minimumSize: Size(100,
                                        50), // Define o tamanho mínimo do botão
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
