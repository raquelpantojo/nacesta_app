// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/listacompras.dart';

class ListaComprasView extends StatefulWidget {
  const ListaComprasView ({super.key});

  @override
  State<ListaComprasView> createState() => _ListaComprasViewState();
}

class _ListaComprasViewState extends State<ListaComprasView> {

  // Lista dinâmica de objetos da classe contato
  // dados é o atributo da classe

 List<ListaCompras> dados =[];
 @override
 void initState(){
  dados.add(ListaCompras('Arroz','2 kg' ));
  dados.add(ListaCompras('Feijão','1 kg'));
  dados.add(ListaCompras('Macarrão','1 pct'));
  dados.add(ListaCompras('Carne','1 kg'));
  dados.add(ListaCompras('Ovos','12 unid'));
  super.initState();

 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(

        //Quantidade de itens
        itemCount: dados.length ,

        //Aparencia de cada item
        itemBuilder:(context,index) {
          //
          return Card
          (
            child: ListTile(
              title: Text(dados[index].item),
              subtitle: Text(dados[index].quantidade),
            ),
          );
        },
        )
      ),
    );
  }
}
