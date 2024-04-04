// ignore_for_file: prefer_const_constructors, sort_child_properties_last
// Tela Criar nome da lista

import 'package:flutter/material.dart';

class TelaCriarNovaListaView extends StatefulWidget {
  @override
  _TelaCriarListaNovaViewState createState() => _TelaCriarListaNovaViewState();
}


class _TelaCriarListaNovaViewState extends State<TelaCriarNovaListaView> {
  TextEditingController NomeDalistaController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crie uma nova lista de compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: NomeDalistaController,
              decoration: InputDecoration(
                labelText: 'Nome da Lista',
              ),
            ),
           
            SizedBox(height: 40),
            Center(
              child: Column(
                children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade400,
                foregroundColor: Color.fromARGB(255, 255, 254, 254),),
              onPressed: () {
                String NomeDalista = NomeDalistaController.text;
                
                Navigator.pop(context, {'nomeDalista': NomeDalista});
              },
              child: Text('Salvar',style: TextStyle(fontSize: 20)),
            ),
                ],
              )
            )
            
          ],
        ),
      ),
    );
  }
}
