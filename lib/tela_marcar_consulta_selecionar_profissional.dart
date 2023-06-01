import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_data.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MarcarConsulta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SelecionarProfissional(),
    );
  }
}

class SelecionarProfissional extends StatefulWidget {
  @override
  _SelecionarProfissionalState createState() => _SelecionarProfissionalState();
}

class _SelecionarProfissionalState extends State<SelecionarProfissional> {
  late String _selectedProfissional;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime?
      _selectedDate; // Alteração: Adicionado "?" para indicar que pode ser null
  bool _profissionalSelecionado = false; // Nova variável

  List<String> _profissionais = [
    'Selecione o profissional',
    'João (domésticos)',
    'Maria (domésticos)',
    'Rita (Silvestres)',
  ];

  @override
  void initState() {
    super.initState();
    _selectedProfissional =
        _profissionais[0]; // Definindo o primeiro profissional como padrão
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
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
            Divider(
              color: Color.fromARGB(255, 150, 57, 213),
              thickness: 1,
            ),
            SizedBox(height: 15),
            Text(
              'Profissional',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            DropdownButton<String>(
              value: _selectedProfissional,
              hint: Text('Selecione um profissional'),
              onChanged: (newValue) {
                setState(() {
                  _selectedProfissional = newValue!;
                  _profissionalSelecionado =
                      true; // Alteração: Definir como true ao selecionar um profissional
                });
              },
              items: _profissionais.map((profissional) {
                return DropdownMenuItem<String>(
                  value: profissional,
                  child: Text(profissional),
                );
              }).toList(),
            ),
            SizedBox(height: 15),
            if (_profissionalSelecionado) // Nova condição para exibir o texto e o calendário somente se um profissional for selecionado
              Column(
                children: [
                  Text(
                    'Selecione a data',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  TableCalendar(
                    firstDay: DateTime.now(),
                    lastDay: DateTime.now().add(Duration(days: 365)),
                    focusedDay: DateTime.now(),
                    calendarFormat: _calendarFormat,
                    selectedDayPredicate: (day) {
                      // Verifica se o dia selecionado é igual à _selectedDate
                      return isSameDay(day, _selectedDate);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDate = selectedDay;
                      });
                    },
                  ),
                  SizedBox(height: 15), // Espaço vazio abaixo do calendário
                ],
              ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: ElevatedButton(
                  onPressed: _selectedDate != null
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MarcarConsultaData()),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 62, 52, 169),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(170, 46.0),
                  ),
                  child: Text(
                    'Próximo',
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
      ),
    );
  }
}
