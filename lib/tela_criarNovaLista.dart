import 'package:flutter/material.dart';

class TelaCriarNovaListaView extends StatefulWidget {
  @override
  _TelaCriarListaNovaViewState createState() => _TelaCriarListaNovaViewState();
}

class _TelaCriarListaNovaViewState extends State<TelaCriarNovaListaView> {
  TextEditingController nomeDaListaController = TextEditingController();
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
        title: Text('Crie uma nova lista de compras'),
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
            ),
            SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade400,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      String nomeDaLista = nomeDaListaController.text;
                      Navigator.pop(context, {'nomeDaLista': nomeDaLista});
                    },
                    child: Text('Salvar', style: TextStyle(fontSize: 20)),
                  ),
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
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // Adicione aqui a funcionalidade de salvar a lista
                    },
                    child: Text('Salvar', style: TextStyle(fontSize: 20)),
                  ),
                ],
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
