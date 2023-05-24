import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromARGB(255, 255, 140, 255),
              Color.fromARGB(255, 73, 33, 216),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/logo.png',
              height: 250,
              width: 250,
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 73, 33, 216),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String senha = _senhaController.text;
                // Aqui você pode adicionar a lógica para verificar as credenciais do usuário
                // e fazer login.
                print('Email: $email');
                print('Senha: $senha');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 73, 33, 216)),
                minimumSize: MaterialStateProperty.all(Size(150, 45)),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
