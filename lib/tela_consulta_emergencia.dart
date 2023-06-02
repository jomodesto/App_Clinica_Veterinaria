import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConsultaEmergencia extends StatelessWidget {
  final String _phoneNumber = '5534988785945';

  Future<void> _launchUrl() async {
    final String url = 'https://wa.me/$_phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Não foi possível executar o $url');
    }
  }

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
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                        "assets/wpp.png"), // Exibe a imagem do ícone do WhatsApp
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Para redirecionarmos você para nosso WhatsApp de emergência, toque no botão acima.", // Mensagem de instrução para o usuário
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap:
                      _launchUrl, // Ao tocar no container, a função _launchUrl é chamada para abrir o WhatsApp
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
