//Essas linhas importam os pacotes necessários para o funcionamento do aplicativo, incluindo widgets do Flutter
//e arquivos personalizados do projeto.
import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:clinica_veterinaria1/tela_inicial.dart';
import 'package:flutter/material.dart';

//Essa classe é um StatefulWidget que representa a tela de marcar consulta. Ela cria um estado mutável para a
//tela e retorna o estado correspondente.
class MarcarConsultaData extends StatefulWidget {
  @override
  _MarcarConsultaDataState createState() => _MarcarConsultaDataState();
}

//Essa classe representa o estado da tela de marcar consulta. Ela contém variáveis e métodos para controlar
//o estado da tela e interagir com os elementos da interface.
class _MarcarConsultaDataState extends State<MarcarConsultaData> {
  //Essas variáveis são usadas para controlar o estado dos contêineres de horários disponíveis e do animal
  //selecionado. containerSelected é uma lista de booleanos que indica se um contêiner foi selecionado ou não.
  //selectedAnimal é um inteiro nulo que representa o animal selecionado.
  List<bool> containerSelected = [false, false, false, false, false];
  int? selectedAnimal;
//Este método é chamado quando um contêiner é tocado. Ele atualiza o estado de containerSelected para refletir
//a seleção do usuário.
  void changeContainerColor(int index) {
    setState(() {
      for (int i = 0; i < containerSelected.length; i++) {
        containerSelected[i] = i == index;
      }
    });
  }

//Essa variável representa o índice do animal selecionado na lista de opções.
  int selectedAnimalIndex = 0; // Nova variável
//Esta lista contém as opções de animais disponíveis para seleção.
  List<String> animalOptions = [
    'Selecione o animal',
    'Mel',
    'Linda',
    'Bil',
  ]; // Nova lista de opções
//Esta variável representa a opção de animal selecionada.
  String selectedAnimalOption = 'Selecione o animal'; // Nova variável
//Este método exibe um diálogo de confirmação quando o botão "Marcar" é pressionado.
  void marcarConsulta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Consulta marcada'),
          content: Text('A consulta foi marcada com sucesso.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

//Este método constrói a interface da tela de marcar consulta. Ele retorna um Scaffold, que é um
//widget do Flutter para criar a estrutura básica de uma tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 57, 213),
        actions: [],
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
          ),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
//Este é o corpo da tela, um Column que contém todos os outros widgets da tela dispostos verticalmente.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
//Este é um contêiner que envolve o título "Marcar Consulta" e o posiciona no centro da tela.
            child: Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Marcar Consulta',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 62, 52, 169),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
//Este é um divisor horizontal usado para separar visualmente os elementos da interface.
          Divider(
            color: Color.fromARGB(255, 150, 57, 213),
            thickness: 1,
          ),
//Este é um divisor horizontal usado para separar visualmente os elementos da interface.
          SizedBox(height: 10),
          Center(
            child: Text(
              'Horários disponíveis para o dia selecionado:',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
//Este é um Padding que envolve os contêineres de horários disponíveis e aplica um preenchimento horizontal.
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//Este é um GestureDetector que envolve cada contêiner de horário disponível. Ele detecta o toque do usuário e
//chama o método changeContainerColor para atualizar o estado dos contêineres.
                GestureDetector(
                  onTap: () {
                    changeContainerColor(0);
                  },
//Este é um Material que envolve cada contêiner de horário disponível. Ele aplica um efeito de elevação e bordas
//arredondadas ao contêiner.
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                        color: containerSelected[0]
                            ? const Color.fromARGB(255, 160, 227, 162)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '10:00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),

                GestureDetector(
                  onTap: () {
                    changeContainerColor(1);
                  },
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                        color: containerSelected[1]
                            ? const Color.fromARGB(255, 160, 227, 162)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '10:30',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                GestureDetector(
                  onTap: () {
                    changeContainerColor(2);
                  },
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                        color: containerSelected[2]
                            ? const Color.fromARGB(255, 160, 227, 162)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '12:00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                GestureDetector(
                  onTap: () {
                    changeContainerColor(3);
                  },
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                        color: containerSelected[3]
                            ? const Color.fromARGB(255, 160, 227, 162)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '13:00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                GestureDetector(
                  onTap: () {
                    changeContainerColor(4);
                  },
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                        color: containerSelected[4]
                            ? const Color.fromARGB(255, 160, 227, 162)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '14:00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
//Este é um Text que exibe a mensagem "Selecionar o animal que será consultado".
          Center(
            child: Text(
              'Selecionar o animal que será consultado:',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
//Este é um Padding que envolve o menu suspenso de seleção do animal. Ele aplica um preenchimento horizontal.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
//Este é um Container que envolve o menu suspenso de seleção do animal. Ele define a altura do contêiner.
            child: Container(
              height: 40,
              alignment: Alignment.center,
//Este é um DropdownButton que representa o menu suspenso de seleção do animal. Ele exibe as opções de animais disponíveis
              child: DropdownButton<String>(
                value: selectedAnimalOption,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedAnimalOption = newValue!;
                  });
                },
                items: animalOptions.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'ou',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
//Este é um Row que contém o ícone "Adicionar" e o texto "Cadastrar mais animais". Ele está centralizado na tela.
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle,
                  color: Color.fromARGB(255, 62, 52, 169),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarAnimal()),
                    );
                  },
                  child: Text(
                    'Cadastrar mais animais',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 62, 52, 169),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
//Este é um Expanded que expande o widget filho para preencher o espaço disponível na direção vertical.
//Ele alinha o botão "Marcar" na parte inferior da tela.
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52, 169),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(170, 46.0),
                  ),
                  child: Text(
                    'Marcar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Consulta marcada com sucesso!'),
                          content: Text(
                              'Aguardamos você e seu pet no dia e horário selecionados'),
                          actions: [
//Este é um botão elevado que representa o botão "Marcar". Ele exibe o texto "Marcar" e chama o método marcarConsulta
//quando é pressionado.
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 62, 52,
                                    169), // Nova cor de fundo do botão
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Voltar para o Menu Inicial'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
