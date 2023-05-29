import 'package:clinica_veterinaria1/tela_inicial.dart';
import 'package:flutter/material.dart';

class DesmarcarConsulta extends StatefulWidget {
  const DesmarcarConsulta({Key? key}) : super(key: key);

  @override
  _DesmarcarConsultaState createState() => _DesmarcarConsultaState();
}

class _DesmarcarConsultaState extends State<DesmarcarConsulta> {
  int? selectedIndex;
  final List<Desmarcar> desmarcarConsultas = [
    Desmarcar(
      paciente: 'Linda',
      data: '25/05/2023',
      hora: '14:30',
      medico: 'Dr. João',
    ),
    Desmarcar(
      paciente: 'Linda',
      data: '27/05/2023',
      hora: '09:00',
      medico: 'Dr. Maria',
    ),
    Desmarcar(
      paciente: 'Mel',
      data: '30/05/2023',
      hora: '16:45',
      medico: 'Dr. Rita',
    ),
  ];

  void desmarcarConsulta() {
    if (selectedIndex != null) {
      setState(() {
        desmarcarConsultas.removeAt(selectedIndex!);
        selectedIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 57, 213),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40,
          ),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              'Desmarcar Consulta',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 150, 57, 213),
            thickness: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: desmarcarConsultas.length,
              itemBuilder: (context, index) {
                final desmarcarConsulta = desmarcarConsultas[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'Paciente: ${desmarcarConsulta.paciente}',
                        style: const TextStyle(fontSize: 25),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data: ${desmarcarConsulta.data}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Hora: ${desmarcarConsulta.hora}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Médico: ${desmarcarConsulta.medico}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      trailing: selectedIndex == index
                          ? const Icon(Icons.radio_button_checked)
                          : const Icon(Icons.radio_button_unchecked),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (selectedIndex != null) {
                  desmarcarConsulta();

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Consulta Desmarcada'),
                        content: Container(
                          width: double.maxFinite,
                          child: Row(
                            children: const [
                              Icon(Icons.check, color: Colors.green),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text('Consulta desmarcada com sucesso!'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 62, 52, 169),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                minimumSize: const Size(170, 46),
                              ),
                              child: const Text(
                                'Voltar para o início',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Erro'),
                        content: const Text(
                          'É necessário selecionar ao menos uma consulta para prosseguir.',
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 62, 52, 169),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'OK',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 62, 52, 169),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: const Size(170, 46),
              ),
              child: const Text(
                'Desmarcar',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Desmarcar {
  final String paciente;
  final String data;
  final String hora;
  final String medico;

  Desmarcar({
    required this.paciente,
    required this.data,
    required this.hora,
    required this.medico,
  });
}
