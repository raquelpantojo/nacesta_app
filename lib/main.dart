// ignore_for_file: prefer_const_constructors, duplicate_import

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:nacesta_app/tela_addproduto.dart';
import 'package:nacesta_app/tela_esqueceu.dart';
import 'tela_sobre.dart';
import 'tela_inicio.dart';
import 'tela_login.dart';
import 'tela_cadastro.dart';
import 'TelaCriarLista.dart';
import 'tela_addproduto.dart';

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
      initialRoute: 'tinicio',
      routes: {
        'tlogin':(context) => TelaLoginView(),
        'tsobre': (context) => TelaSobreView(),
        'tinicio': (context) => TelaInicioView(),
        'tesqueceu':(context) => telaEsqueceuView(),
        'tcadastro':(context) => TelaCadastroView(),
        'tcriarlista':(context) =>TelaCriarListaView(),
        'taddproduto':(context) =>TelaAdicionarProdutoView(),
   
      },
      home: TelaLoginView(),
    );
  }
}
