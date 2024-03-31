// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaLoginView extends StatefulWidget {
  const TelaLoginView({Key? key});

  @override
  State<TelaLoginView> createState() => _TelaLoginViewState();
}

class _TelaLoginViewState extends State<TelaLoginView> {
  var formKey = GlobalKey<FormState>();
  var textValor1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset(
                'lib/imagens/logo.PNG',
                width: 200,
                height: 200,
              ),
              TextFormField(
                controller: textValor1, // Controlador para o campo de texto do nome
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'email',
                  prefixIcon: Icon(Icons.mail, color: Color.fromARGB(255, 223, 108, 146)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe um nome';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintText: 'senha',
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 223, 108, 146)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe uma senha';
                  } else if (double.tryParse(value) == null) {
                    return 'Informe um valor NUMÉRICO';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Color.fromARGB(255, 223, 108, 146),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'tesqueceu');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Esqueceu a senha?"),
                    ),
                  );
                },
                child: Text(
                  'Esqueci a senha',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: Color.fromARGB(255, 255, 254, 254),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String nome = textValor1.text; // Obtendo o nome do campo de texto
                    Navigator.pushNamed(context, 'tinicio', arguments: nome); // Passando o nome como argumento
                  }
                },
                child: Text('Login', style: TextStyle(fontSize: 28)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(236, 64, 122, 1),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'tcadastro');
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
