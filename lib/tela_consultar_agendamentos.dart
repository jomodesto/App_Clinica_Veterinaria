import 'package:flutter/material.dart';

class ConsultarAgendamentos extends StatelessWidget {
  final List<Agendamento> agendamentos = [
    Agendamento(
      paciente: 'João da Silva',
      data: '25/05/2023',
      hora: '14:30',
      medico: 'Dr. João',
    ),
    Agendamento(
      paciente: 'Maria Oliveira',
      data: '27/05/2023',
      hora: '09:00',
      medico: 'Dr. Maria',
    ),
    Agendamento(
      paciente: 'Pedro Santos',
      data: '30/05/2023',
      hora: '16:45',
      medico: 'Dr. Pedro',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 57, 213),
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
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Consultar Agendamentos',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 62, 52, 169),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 150, 57, 213),
            thickness: 1,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: agendamentos.length,
              itemBuilder: (context, index) {
                final agendamento = agendamentos[index];
                return GestureDetector(
                  onTap: () {
                    _mostrarDetalhes(context, agendamento);
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'Paciente: ${agendamento.paciente}',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data: ${agendamento.data}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Hora: ${agendamento.hora}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Médico: ${agendamento.medico}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.remove_red_eye),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarDetalhes(BuildContext context, Agendamento agendamento) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Detalhes da Consulta', style: TextStyle(fontSize: 20)),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Paciente: ${agendamento.paciente}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15),
              Text(
                'Data: ${agendamento.data}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Hora: ${agendamento.hora}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Médico: ${agendamento.medico}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
