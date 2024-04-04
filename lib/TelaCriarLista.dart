// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class TelaCriarListaView extends StatefulWidget {
  @override
  _TelaCriarListaViewState createState() => _TelaCriarListaViewState();
}

class _TelaCriarListaViewState extends State<TelaCriarListaView> {
  final List<String> produtos = [
    'Arroz',
    'Feijão',
    'Macarrão',
    'Carne',
    'Frango',
    'Leite',
    'Ovos',
  ];

  // Mapa para armazenar a quantidade de cada produto
  Map<String, int> quantidadeProdutos = {
    'Arroz': 0,
    'Feijão': 0,
    'Macarrão': 0,
    'Carne': 0,
    'Frango': 0,
    'Leite': 0,
    'Ovos': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 24),
            Text(
              'Selecione os produtos e a quantidade:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  final produto = produtos[index];
                  return ListTile(
                    title: Text(produto, style: TextStyle(fontSize: 20)),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantidadeProdutos[produto]! > 0) {
                                  // Se a quantidade for maior que 1, diminui 1
                                  quantidadeProdutos[produto] =
                                      quantidadeProdutos[produto]! - 1;
                                }
                              });
                            },
                          ),
                          Text(
                            '${quantidadeProdutos[produto]}', // Quantidade do produto
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                // Adiciona 1 à quantidade
                                quantidadeProdutos[produto] =
                                    quantidadeProdutos[produto]! + 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade400,
                foregroundColor: Color.fromARGB(255, 255, 254, 254),
              ),
              onPressed: () {

              },
              child: Text('Salvar', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'taddproduto');
          // Adicione a funcionalidade de adicionar novo item à lista de compras aqui
        },
        child: Icon(Icons.add, color: Color.fromARGB(255, 223, 108, 146), size: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
