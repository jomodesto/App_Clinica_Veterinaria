import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ajuda extends StatelessWidget {
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
        child: Center(
          child: ElevatedButton.icon(
            onPressed: _launchUrl,
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: Text(
              'Abrir WhatsApp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 37, 211, 102),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
