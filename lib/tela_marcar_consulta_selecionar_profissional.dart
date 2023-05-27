import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MarcarConsulta());
}

class MarcarConsulta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  DateTime _selectedDate = DateTime.now();

  List<String> _profissionais = [
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
            SizedBox(height: 20), // Espaçamento entre o Divider e o novo texto
            Text(
              'Profissional',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedProfissional,
              hint: Text('Selecione um profissional'),
              onChanged: (newValue) {
                setState(() {
                  _selectedProfissional = newValue!;
                });
              },
              items: _profissionais.map((profissional) {
                return DropdownMenuItem<String>(
                  value: profissional,
                  child: Text(profissional),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Selecione uma data',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime(2025, 12, 31),
              focusedDay: _selectedDate,
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
