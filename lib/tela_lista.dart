import 'package:flutter/material.dart';

class TelaListaView extends StatefulWidget {
  const TelaListaView({Key? key});

  @override
  State<TelaListaView> createState() => _TelaListaViewState();
}

class _TelaListaViewState extends State<TelaListaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, 'tsobre');
            },
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Olá'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'tinicio');
              },
              child: Text('Abrir'),
            ),
          ],
        ),
      ),
    );
  }
}
