// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

String stringAutores = 'Prof. Dr. Rouverson Pereira da Silva \n'
    'Prof. Dr. Adão Felipe dos Santos \n'
    'M. Sc. Bruno Rafael de Almeida Moreira \n'
    'Gustavo Brasca Bachega \n'
    'E-mail: rouverson@unesp.br \n'
    'Celular: (16) 99993-4575 \n';

String stringRealizacao = 'Inserir link do LAMMA e do UNIPAM nos logos. \n'
    '“Sobre o SAPECA”. \n'
    'O SAPECA foi desenvolvido com o objetivo de auxiliar o produtor, permitindo o monitoramento das perdas na colheita de amendoim. \n'
    'Por ser uma estimativa, os valores calculados fornecem apenas uma aproximação das perdas, uma vez que não são consideradas condições particulares de cada lavoura. \n'
    'Os resultados no entanto, permitem que o produtor possa obter um melhor gerenciamento da sua colheita, visando melhor retorno econômico.';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(padding: EdgeInsets.all(8)),
        Center(
          child: const Text.rich(
            TextSpan(
              text: '',
              style: TextStyle(
                fontSize: 16,
              ), // default text style
              children: <TextSpan>[
                TextSpan(
                    text: 'S', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'istema de ',
                ),
                TextSpan(
                    text: 'A', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'valiação de ',
                ),
                TextSpan(
                    text: 'P', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'erdas na ',
                ),
                TextSpan(
                    text: 'C', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'olheita de ',
                ),
                TextSpan(
                    text: 'A', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'mendoim – ',
                ),
                TextSpan(
                    text: 'SAPECA',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        // Lista dos Autores
        ListTile(
          title: Text(
            'Autores',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            stringAutores,
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.all(16),
        ),
        // Lista dos Autores
        ListTile(
          title: Text(
            'Desenvolvedor',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Lucas Natan Camacho',
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.all(16),
        ),
        // Lista dos Autores
        ListTile(
          title: Text(
            'Realização',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            stringRealizacao,
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.all(16),
        ),
      ],
    ));
  }
}
