import 'package:clinica_veterinaria1/tela_desmarcar_consulta.dart';
import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_profissional.dart';
import 'package:flutter/material.dart';

class ConsultarAgendamentos extends StatefulWidget {
  const ConsultarAgendamentos({Key? key}) : super(key: key);

  @override
  _ConsultarAgendamentosState createState() => _ConsultarAgendamentosState();
}

class _ConsultarAgendamentosState extends State<ConsultarAgendamentos> {
  int? selectedIndex; // Índice do agendamento selecionado
  final List<Agendamento> agendamentos = [
    Agendamento(
      paciente: 'Linda',
      data: '25/06/2023',
      hora: '14:30',
      medico: 'Dr. João',
    ),
    Agendamento(
      paciente: 'Linda',
      data: '27/06/2023',
      hora: '09:00',
      medico: 'Dr. Maria',
    ),
    Agendamento(
      paciente: 'Mel',
      data: '30/06/2023',
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
              'Consultar Agendamentos',
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
              itemCount: agendamentos.length,
              itemBuilder: (context, index) {
                final agendamento = agendamentos[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'Paciente: ${agendamento.paciente}',
                        style: const TextStyle(fontSize: 25),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data: ${agendamento.data}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Hora: ${agendamento.hora}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Médico: ${agendamento.medico}',
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
                  final agendamentoSelecionado = agendamentos[selectedIndex!];
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Row(
                          children: [
                            const Text('Consulta Agendada'),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                'Paciente: ${agendamentoSelecionado.paciente}'),
                            Text('Data: ${agendamentoSelecionado.data}'),
                            Text('Hora: ${agendamentoSelecionado.hora}'),
                            Text('Médico: ${agendamentoSelecionado.medico}'),
                          ],
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DesmarcarConsulta()),
                              ); // Ação do botão 1
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 62, 52, 169),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Desmarcar',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MarcarConsulta(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 150, 57, 213),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Remarcar',
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
                'Consultar',
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

class Agendamento {
  final String paciente;
  final String data;
  final String hora;
  final String medico;

  Agendamento({
    required this.paciente,
    required this.data,
    required this.hora,
    required this.medico,
  });
}
