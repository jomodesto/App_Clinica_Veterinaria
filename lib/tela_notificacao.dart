import 'package:flutter/material.dart';

class Notificacao extends StatelessWidget {
  final List<String> notificacoes = [
    'A consulta foi marcada com sucesso! Enviaremos uma mensagem de confirmação um dia antes pelo WhatsApp',
    'Vimos que desmarcou a consulta do seu pet, esperamos que esteja tudo bem mas, caso precise estamos a disposição!',
    'A consulta foi marcada com sucesso! Enviaremos uma mensagem de confirmação um dia antes pelo WhatsApp',
    'Olá! Seu pet tem uma consulta amanhã às 10:30 com o Doutor Rodrigo!',
    'A consulta foi remarcada com sucesso! Enviaremos uma mensagem de confirmação um dia antes pelo WhatsApp',
    'A consulta foi marcada com sucesso! Enviaremos uma mensagem de confirmação um dia antes pelo WhatsApp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(
            255, 150, 57, 213), // Define a cor de fundo da AppBar
        actions: [], // Define as ações da AppBar (nenhuma ação neste caso)
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left, // Ícone de seta para a esquerda
            size: 40,
          ),
          color: Colors.black38, // Define a cor do ícone
          onPressed: () => Navigator.pop(
              context, false), // Define a ação de voltar ao pressionar o ícone
        ),
      ),
      body: ListView.builder(
        itemCount: notificacoes
            .length, // Número total de itens na lista de notificações
        itemBuilder: (context, index) {
          // Constrói cada item da lista com base no índice
          final notificacao = notificacoes[
              index]; // Obtém a notificação atual com base no índice
          return Padding(
            padding:
                EdgeInsets.all(8.0), // Espaçamento entre as caixas de texto
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(
                    16.0), // Espaçamento interno da caixa de texto
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        notificacao,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove_red_eye), // Ícone de olho
                      onPressed: () {
                        // Lógica para exibir o pop-up com as informações da notificação
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Detalhes da Notificação'),
                              content: Text(notificacao),
                              actions: [
                                Container(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromARGB(
                                          255, 62, 52, 169),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      minimumSize: const Size(170, 46),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Fechar',
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
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
