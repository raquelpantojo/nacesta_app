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
          padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
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
                child: const Text('Voltar'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
