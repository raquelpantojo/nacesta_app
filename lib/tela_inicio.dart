// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TelaInicioView extends StatefulWidget {
  const TelaInicioView({Key? key});

  @override
  State<TelaInicioView> createState() => _TelaInicioViewState();
}

class _TelaInicioViewState extends State<TelaInicioView> {
  @override
  Widget build(BuildContext context) {
    // Obtendo o argumento passado para esta tela
    String? nome = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Definindo a altura preferida da AppBar
        child: AppBar(
          title: Text(
            'Na Cesta',
            style: TextStyle(color: Colors.white), // Definindo a cor do texto do título
          ),
          centerTitle: false, // Alinhando o título à esquerda da AppBar
          backgroundColor: Color.fromARGB(255, 223, 108, 146), // Definindo a cor de fundo da AppBar
          elevation: 0, // Removendo a sombra da AppBar
          actions: [
            IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, 'tsobre');
              },
              iconSize: 40
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 100), // Ajustando o espaçamento do conteúdo da página
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Alinhando os elementos ao início da página
          crossAxisAlignment: CrossAxisAlignment.start, // Alinhando os elementos à esquerda da página
          children: [
            // Adiciona o nome:
            Text(
              'Olá ${nome ?? ''}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            Center( // Centralizando os botões na tela
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(236, 64, 122, 1),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'tinicio');
                    },
                    child: Text('Criar uma lista'),
                  ),
                  SizedBox(height: 20), // Espaçamento entre os botões
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(236, 64, 122, 1),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'tinicio');
                    },
                    child: Text('Ver minhas listas de compra'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}