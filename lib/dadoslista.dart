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

        //Quantidade de itens
        itemCount: dados.length ,

        //Aparencia de cada item
        itemBuilder:(context,index) {
          //
          return Card
          (
            child: ListTile(
              title: Text(dados[index].nomelista),
              
            ),
          );
        },
        )
      ),
    );
  }
}
