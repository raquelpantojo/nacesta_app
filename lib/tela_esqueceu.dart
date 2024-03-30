//Tela de Esqueceu senha

// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class telaEsqueceuView extends StatefulWidget {
  const telaEsqueceuView({Key? key});

  @override
  State<telaEsqueceuView> createState() => _telaEsqueceuViewState();
}

class _telaEsqueceuViewState extends State<telaEsqueceuView> {
  var formKey = GlobalKey<FormState>();
  var textValor1 = TextEditingController();
  var textValor2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
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
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nova senha',
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 223, 108, 146)),
                  //hintText: 'senha',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe um nome';
                  } else if (value.isEmpty) {
                    return 'Informe um nome';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmar senha',
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 223, 108, 146)),
                  //hintText: 'senha',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe um email';
                  } else if (value.isEmpty) {
                    return 'Informe uma senha';
                  } else if (double.tryParse(value) == null) {
                    return 'Informe um valor NUMÉRICO';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: const Color.fromARGB(255, 255, 254, 254),
                ),
                onPressed: () {
                  //Navigator
                  Navigator.pushNamed(context, 'tlogin');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Senha Modificada"),
                    ),
                   );
                },
                child: const Text('Trocar de senha', style: TextStyle(fontSize: 28)),
              ),
              const SizedBox(height: 10),
            
             
            ],
          ),
        ),
      ),
    );
  }
}
