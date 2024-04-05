//RF004
//Sobre
// O aplicativo deve possuir uma tela com informações sobre o projeto. 
//A tela sobre deve apresentar dados sobre o projeto, tais como: tema escolhido, 
//objetivo do aplicativo e nome completo do desenvolvedor. 
//O desenvolvedor poderá determinar em qual parte do aplicativo o usuário poderá ter acesso a tela sobre.

import 'package:flutter/material.dart';

class TelaSobreView extends StatefulWidget {
  const TelaSobreView({Key? key});

  @override
  State<TelaSobreView> createState() => _TelaSobreViewState();
}

class _TelaSobreViewState extends State<TelaSobreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Este projeto foi desenvolvido por Raquel Pantojo de Souza Bachour, '
                'como parte integradora avaliativa da disciplina de Programação para Dispositivos Móveis, '
                'professor: Rodrigo de Oliveira Plotze na Fatec de Ribeirão Preto - SP. '
                'O projeto tem o objetivo de fazer uma interface de lista de compras em Flutter.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'tinicio');
                },
                style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 223, 108, 146), 
                foregroundColor: const Color.fromARGB(255, 255, 254, 254),
                 ),
                child: const Text('Voltar',
                style: TextStyle(fontSize: 20)),
                
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
