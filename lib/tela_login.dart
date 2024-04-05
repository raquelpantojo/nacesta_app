// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaLoginView extends StatefulWidget {
  const TelaLoginView({Key? key});

  @override
  State<TelaLoginView> createState() => _TelaLoginViewState();
}

class _TelaLoginViewState extends State<TelaLoginView> {
  final formKey = GlobalKey<FormState>();
  final textValor1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    return 'Informe um email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(fontSize: 20),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintText: 'senha',
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 223, 108, 146)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe uma senha';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'tesqueceu');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Esqueceu a senha?"),
                    ),
                    
                  );
                },
                style: ButtonStyle(
              foregroundColor:  MaterialStateProperty.all(Colors.pink.shade400),
                ),
                child: Text(
                  'Esqueci a senha',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(height: 30),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      String nome = textValor1.text; 
                      Navigator.pushNamed(context, 'tinicio', arguments: nome); 
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade400,
                    foregroundColor: Color.fromARGB(255, 255, 254, 254),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 28)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'tcadastro');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(236, 64, 122, 1),
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(fontSize: 28),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
 }
}
              