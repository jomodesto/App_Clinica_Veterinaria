// import dos pacotes necessários para o funcionamento do aplicativo
import 'package:clinica_veterinaria1/tela_inicial.dart';
import 'package:clinica_veterinaria1/tela_marcar_consulta_selecionar_data.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

//criando a classe e estendendo o widget StatelessWidget que é um widget sem estado
class MarcarConsulta extends StatelessWidget {
//MaterialApp é a raiz do aplicativo e define a tela inicial como SelecionarProfissional.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SelecionarProfissional(),
    );
  }
}

//Aqui é definida a classe SelecionarProfissional como um widget com estado (StatefulWidget)
//que retorna o estado _SelecionarProfissionalState
class SelecionarProfissional extends StatefulWidget {
  @override
  _SelecionarProfissionalState createState() => _SelecionarProfissionalState();
}

//Esta parte do código define a classe _SelecionarProfissionalState como o estado para o widget SelecionarProfissional.
//Ela possui algumas variáveis, como _selectedProfissional, _calendarFormat, _selectedDate e _profissionalSelecionado.
class _SelecionarProfissionalState extends State<SelecionarProfissional> {
  late String _selectedProfissional;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime?
      _selectedDate; // Alteração: Adicionado "?" para indicar que pode ser null
  bool _profissionalSelecionado = false; // Nova variável
//Uma lista de profissionais é definida com alguns nomes.
  List<String> _profissionais = [
    'Selecione o profissional',
    'João (domésticos)',
    'Maria (domésticos)',
    'Rita (Silvestres)',
  ];
//O método initState() é usado para inicializar o estado do widget. Neste caso, ele define _selectedProfissional
//como o primeiro profissional da lista.
  @override
  void initState() {
    super.initState();
    _selectedProfissional =
        _profissionais[0]; // Definindo o primeiro profissional como padrão
  }

//Este é o método build do widget SelecionarProfissional
  @override
  Widget build(BuildContext context) {
// Ele retorna um Scaffold que define a aparência básica da tela, com um AppBar personalizado
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
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                )),
      ),
      //Texto
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
//linha abaixo do texto
            Divider(
              color: Color.fromARGB(255, 150, 57, 213),
              thickness: 1,
            ),
//Espaçamento entre os textos
            SizedBox(height: 15),
//texto
            Text(
              'Profissional',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
//espaçamento entre o texto e o seletor de profissional
            SizedBox(height: 15),
            DropdownButton<String>(
              value:
                  _selectedProfissional, // Valor atualmente selecionado no dropdown
              hint: Text(
                  'Selecione um profissional'), // Texto exibido quando nenhum valor é selecionado
              onChanged: (newValue) {
                // Função chamada quando um novo valor é selecionado
                setState(() {
                  // Atualiza o estado do widget
                  _selectedProfissional =
                      newValue!; // Atualiza o valor selecionado
                  _profissionalSelecionado =
                      true; // Define como verdadeiro ao selecionar um profissional
                });
              },
              items: _profissionais.map((profissional) {
                // Lista de itens exibidos no dropdown
                return DropdownMenuItem<String>(
                  value: profissional, // Valor associado a cada item
                  child: Text(profissional), // Texto exibido para cada item
                );
              }).toList(),
            ),
//espaçamento entre o seletor e texto
            SizedBox(height: 15),
//texto e calendário só irão aparecer após a seleção do profissional
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
//espaçamento entre o texto e o calendário
                  SizedBox(height: 15),
//Calendário
                  TableCalendar(
                    firstDay: DateTime
                        .now(), // Define o primeiro dia exibido no calendário como a data atual
                    lastDay: DateTime.now().add(Duration(
                        days:
                            365)), // Define o último dia exibido no calendário como a data atual mais um ano (365 dias)
                    focusedDay: DateTime
                        .now(), // Define o dia focado no calendário como a data atual
                    calendarFormat:
                        _calendarFormat, // Define o formato do calendário com base na variável _calendarFormat
                    selectedDayPredicate: (day) {
                      // Função chamada para verificar se um dia está selecionado
                      // Verifica se o dia selecionado é igual à _selectedDate
                      return isSameDay(day, _selectedDate);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      // Função chamada quando um dia é selecionado
                      setState(() {
                        _selectedDate =
                            selectedDay; // Atualiza a variável _selectedDate com o dia selecionado
                      });
                    },
                  ),
//espaçamento entre o calendário e botão próximo
                  SizedBox(height: 15), // Espaço vazio abaixo do calendário
                ],
              ),
//Botão próximo
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
