// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TelaCriarNovaListaView extends StatefulWidget {
  @override
  _TelaCriarListaNovaViewState createState() =>
      _TelaCriarListaNovaViewState();
}

class _TelaCriarListaNovaViewState extends State<TelaCriarNovaListaView> {
  TextEditingController nomeDaListaController = TextEditingController();
  TextEditingController pesquisaController = TextEditingController();
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

  List<String> produtosFiltrados = [];

  @override
  void initState() {
    super.initState();
    produtosFiltrados.addAll(produtos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Row(
          children:[
            Icon(Icons.list),
            Text('  Crie uma nova lista'),
          ],
      ),
      foregroundColor: Color.fromARGB(255, 245, 241, 241),
      backgroundColor: Color.fromARGB(255, 223, 108, 146),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nomeDaListaController,
              decoration: InputDecoration(
                labelText: 'Escreva o nome da Lista',
              ),
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: TextField(
                      controller: pesquisaController,
                      onChanged: (value) {
                        setState(() {
                          produtosFiltrados = produtos
                              .where((produto) =>
                                  produto.toLowerCase().contains(value.toLowerCase()))
                              .toList();
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Pesquise',
                      ),
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Adicione a funcionalidade de pesquisa aqui
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Selecione os produtos e a quantidade:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 223, 108, 146)),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: produtosFiltrados.length,
                itemBuilder: (context, index) {
                  final produto = produtosFiltrados[index];
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
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                 //String nomeDaLista = nomeDaListaController.text;
                },
                child: Text('Salvar', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'taddproduto');
          // Adicione a funcionalidade de adicionar novo item à lista de compras aqui
        },
        child: Icon(Icons.add, color: Colors.pink.shade400, size: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
