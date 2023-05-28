import 'package:flutter/material.dart';

class ConsultarAgendamentos extends StatelessWidget {
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
      body: Container(
        alignment: Alignment.topCenter,
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
    );
  }
}
