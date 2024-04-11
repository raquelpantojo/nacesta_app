// ignore_for_file: prefer_const_constructors, duplicate_import, use_key_in_widget_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'tela_sobre.dart';
import 'tela_inicio.dart';
import 'tela_login.dart';
import 'tela_cadastro.dart';
import  'tela_esqueceu.dart';
import 'TelaCriarLista.dart';
import 'tela_addproduto.dart';
import 'dadoslista.dart';
import 'tela_criarNovaLista.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Na Cesta',
      initialRoute: 'tlogin',
      routes: {
        'tlogin':(context) => TelaLoginView(),
        'tsobre': (context) => TelaSobreView(),
        'tinicio': (context) => TelaInicioView(),
        'tesqueceu':(context) => telaEsqueceuView(),
        'tcadastro':(context) => TelaCadastroView(),
        'tcriarlista':(context) => TelaCriarListaView(),
        'taddproduto':(context) => TelaAdicionarProdutoView(),
        'tdadosLista': (context)=> ListaComprasView(),
        'tcriarNovaLista':(context)=> TelaCriarNovaListaView(),
   
      },
      home: TelaLoginView(),
    );
  }
}
