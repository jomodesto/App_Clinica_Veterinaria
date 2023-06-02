import 'package:clinica_veterinaria1/tela_bem_vindo.dart'; //import 'tela_bem_vindo.dart';
import 'package:flutter/material.dart';

/*No método build, configuramos a estrutura básica do aplicativo, definindo o título,
 removendo o banner de depuração, definindo um tema personalizado (que pode ser
 configurado posteriormente) e definindo a tela inicial como BemVindo().*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este widget é a raiz da sua aplicação.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clínica Veterinária',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: BemVindo(),
    );
  }
}
