import 'package:flutter/material.dart';

class TelaInicioView extends StatefulWidget {
  const TelaInicioView({Key? key});

  @override
  State<TelaInicioView> createState() => _TelaInicioViewState();
}

class _TelaInicioViewState extends State<TelaInicioView> {
  @override
  Widget build(BuildContext context) {
    // Obtendo o argumento passado para esta tela
    String? nome = ModalRoute.of(context)?.settings.arguments as String?;

  
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Definindo a altura preferida da AppBar
        child: AppBar(
          title: Text(
            'Na Cesta',
            style: TextStyle(color: Colors.white), // Definindo a cor do texto do título
          ),
          centerTitle: false, // Alinhando o título à esquerda da AppBar
          backgroundColor: Color.fromARGB(255, 223, 108, 146), // Definindo a cor de fundo da AppBar
          elevation: 0, // Removendo a sombra da AppBar
          actions: [
            Tooltip(
            message:'Sobre',
            child: IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, 'tsobre');
              },
              iconSize: 40,
            ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 100), // Ajustando o espaçamento do conteúdo da página
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Alinhando os elementos ao início da página
          crossAxisAlignment: CrossAxisAlignment.start, // Alinhando os elementos à esquerda da página
          children: [
            // Adiciona o nome:
            Text(
              'Olá ${nome ?? ''} \nBem-vindo a sua lista',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            Center(
              // Centralizando os botões na tela
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Criar nova lista"),
                    ),
                    
                  );
                      Navigator.pushNamed(context, 'tcriarNovaLista');
                    },
                    child: Tooltip(
                      message: "Criar Lista",
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/imagens/cestaVazia.jpg'), // Caminho da imagem
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                    ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Ver Listas"),
                    ),
                    
                  );
                      Navigator.pushNamed(context, 'tdadosLista');
                    },
                    child: Tooltip(
                      message: "Ver Listas",
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/imagens/listaCompras.png'), // Caminho da imagem
                          fit: BoxFit.cover,
                        ),
                        //borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
