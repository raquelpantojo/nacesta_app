import 'package:flutter/material.dart';

import '../model/listacompras.dart';

class ListaComprasView extends StatefulWidget {
  const ListaComprasView({Key? key});

  @override
  State<ListaComprasView> createState() => _ListaComprasViewState();
}

class _ListaComprasViewState extends State<ListaComprasView> {
  List<ListaCompras> dados = [];

  @override
  void initState() {
    dados.add(ListaCompras('Lista Abril'));
    dados.add(ListaCompras('Festa Com amigos'));
    dados.add(ListaCompras('Churrasco da Firma'));
    dados.add(ListaCompras('Almoço de domingo'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Salvas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(dados[index].nomelista),
                trailing: IconButton(
                  icon: Icon(Icons.delete,size: 30,color: Colors.pink.shade400),
                  onPressed: () {
                    // Adicione aqui a funcionalidade de exclusão
                    setState(() {
                      dados.removeAt(index);
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
