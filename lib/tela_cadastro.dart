// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaCadastroView extends StatefulWidget {
  const TelaCadastroView({Key? key});

  @override
  State<TelaCadastroView> createState() => _TelaCadastroViewState();
}

class _TelaCadastroViewState extends State<TelaCadastroView> {
  var formKey = GlobalKey<FormState>();
  //var textValor1 = TextEditingController();
  //var textValor2 = TextEditingController();

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
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'email',
                  prefixIcon: Icon(Icons.mail, color: Color.fromARGB(255, 223, 108, 146)),),
                validator: (value) {
                  if (value == null) {
                    return 'Informe o e-mail';
                  } else if (value.isEmpty) {
                    return 'Informe o e-mail';
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
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 223, 108, 146)),),
                validator: (value) {
                  if (value == null) {
                    return 'Informe uma senha';
                  } else if (value.isEmpty) {
                    return 'Informe uma senha';
                  } else if (double.tryParse(value) == null) {
                    return 'Informe um valor NUMÉRICO';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: Color.fromARGB(255, 255, 254, 254),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'tlogin');
                },
                child: Text('Cadastrar', style: TextStyle(fontSize: 28)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
