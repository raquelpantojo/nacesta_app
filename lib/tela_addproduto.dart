// Tela de adicinar produtos 
//RF007
//Adicionar Itens à Lista
//Os usuários podem adicionar itens à lista de compras, 
//especificando o nome do item e a quantidade. Por exemplo, 2 (dois) Pacotes de Arroz de 5kg.


import 'package:flutter/material.dart';

class TelaAdicionarProdutoView extends StatefulWidget {
  @override
  _TelaAdicionarProdutoViewState createState() => _TelaAdicionarProdutoViewState();
}

class _TelaAdicionarProdutoViewState extends State<TelaAdicionarProdutoView> {
  TextEditingController produtoController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: produtoController,
              decoration: InputDecoration(
                labelText: 'Produto',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: quantidadeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Quantidade',
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
                String produto = produtoController.text;
                int quantidade = int.tryParse(quantidadeController.text) ?? 0;

                Navigator.pop(context, {'produto': produto, 'quantidade': quantidade});
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
