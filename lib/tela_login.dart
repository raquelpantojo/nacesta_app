import 'package:flutter/material.dart';

class telaLoginView extends StatefulWidget {
  const telaLoginView({Key? key});

  @override
  State<telaLoginView> createState() => _telaLoginViewState();
}

class _telaLoginViewState extends State<telaLoginView> {
  var formKey = GlobalKey<FormState>();
  var textValor1 = TextEditingController();
  var textValor2 = TextEditingController();

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
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'senha',
                  hintText: 'senha',
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
              SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: Color.fromARGB(255, 255, 254, 254),
                ),
                onPressed: () {
                  //Navigator
                  Navigator.pushNamed(context, 'tlista');
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      double v1 = double.parse(textValor1.text);
                      double v2 = double.parse(textValor2.text);
                      double resultado = v1 + v2;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Resultado: $resultado'),
                          duration: Duration(seconds: 3),
                    
                      
                        ),
                      );
                    });
                  }
                },
                child: Text('Login', style: TextStyle(fontSize: 28)),
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Color.fromARGB(255, 223, 108, 146),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Esqueceu a senha?"),
                    ),
                  );
                },
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(236, 64, 122, 1),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Cadastrar"),
                    ),
                  );
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
