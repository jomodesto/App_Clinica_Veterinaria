import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_profissional.dart';
import 'package:flutter/material.dart';

class RemarcarConsulta extends StatefulWidget {
  const RemarcarConsulta({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RemarcarConsultaState createState() => _RemarcarConsultaState();
}

class _RemarcarConsultaState extends State<RemarcarConsulta> {
  int? selectedIndex;
  final List<Remarcar> remarcarConsultas = [
    Remarcar(
      paciente: 'Linda',
      data: '25/05/2023',
      hora: '14:30',
      medico: 'Dr. João',
    ),
    Remarcar(
      paciente: 'Linda',
      data: '27/05/2023',
      hora: '09:00',
      medico: 'Dr. Maria',
    ),
    Remarcar(
      paciente: 'Mel',
      data: '30/05/2023',
      hora: '16:45',
      medico: 'Dr. Rita',
    ),
  ];

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
              'Remarcar Consulta',
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
              itemCount: remarcarConsultas.length,
              itemBuilder: (context, index) {
                final remarcarConsulta = remarcarConsultas[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'Paciente: ${remarcarConsulta.paciente}',
                        style: const TextStyle(fontSize: 25),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data: ${remarcarConsulta.data}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Hora: ${remarcarConsulta.hora}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Médico: ${remarcarConsulta.medico}',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarcarConsulta(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Erro'),
                        content: const Text(
                            'É necessário selecionar ao menos uma consulta para prosseguir.'),
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
                'Próximo',
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

class Remarcar {
  final String paciente;
  final String data;
  final String hora;
  final String medico;

  Remarcar({
    required this.paciente,
    required this.data,
    required this.hora,
    required this.medico,
  });
}
