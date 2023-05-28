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
    'Cachorro',
    'Gato',
    'Coelho',
    'Pássaro',
  ]; // Nova lista de opções

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
          SizedBox(height: 20),
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
          SizedBox(height: 20),
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: animalOptions.length,
              itemBuilder: (context, index) {
                return RadioListTile<int>(
                  value: index,
                  groupValue: selectedAnimalIndex,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedAnimalIndex = newValue!;
                    });
                  },
                  title: Text(animalOptions[index]),
                );
              },
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 170,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    // Código para lidar com o botão "Próximo"
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52, 169),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Próximo',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MarcarConsultaData(),
  ));
}
