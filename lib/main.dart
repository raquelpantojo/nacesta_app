// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:nacesta_app/tela_esqueceu.dart';
import 'tela_lista.dart';
import 'tela_sobre.dart';
import 'tela_inicio.dart';
import 'tela_login.dart';
import 'tela_cadastro.dart';

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
        'tlista': (context) => TelaListaView(),
        'tsobre': (context) => TelaSobreView(),
        'tinicio': (context) => TelaInicioView(),
        'tlogin':(context) => TelaLoginView(),
        'tesqueceu':(context) => telaEsqueceuView(),
        'tcadastro':(context) => TelaCadastroView(),
      },
      home: TelaListaView(),
    );
  }
}
