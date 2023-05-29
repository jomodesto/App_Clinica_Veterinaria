import 'package:clinica_veterinaria1/tela_cadastrar_animal.dart';
import 'package:flutter/material.dart';

class MarcarConsultaData extends StatefulWidget {
  @override
  _MarcarConsultaDataState createState() => _MarcarConsultaDataState();
}

class _MarcarConsultaDataState extends State<MarcarConsultaData> {
  List<bool> containerSelected = [false, false, false, false, false];
  int? selectedAnimal;

  void changeContainerColor(int index) {
    setState(() {
      for (int i = 0; i < containerSelected.length; i++) {
        containerSelected[i] = i == index;
      }
    });
  }

  int selectedAnimalIndex = 0; // Nova variável

  List<String> animalOptions = [
    'Selecione o animal',
    'Mel',
    'Linda',
    'Bil',
  ]; // Nova lista de opções

  String selectedAnimalOption = 'Selecione o animal'; // Nova variável

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
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
          Divider(
            color: Color.fromARGB(255, 150, 57, 213),
            thickness: 1,
          ),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    changeContainerColor(0);
                  },
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 40,
              alignment: Alignment.center,
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
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 62, 52,
                                    169), // Nova cor de fundo do botão
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
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

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MarcarConsultaData(),
  ));
}
