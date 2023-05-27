import 'package:flutter/material.dart';

import 'tela_bem_vindo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinica Veterinaria',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: BemVindo(),
    );
  }
}
