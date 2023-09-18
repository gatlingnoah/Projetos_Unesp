// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

String stringAutores = 'Prof. Dr. Arthur \n' //
    'Ms Breno\n'
    'Lucas Natan Camacho da Silva\n'
    'E-mail: @unesp.br \n'
    'Celular: (000) 0000-0000 \n';

String stringRealizacao = 'Inserir link do Unesp. \n'
    '“Sobre o AppBerna. \n'
    ' O AppBerna foi desenvolvido com o objetivo de auxiliar o produtor" \n';

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
                    text: '', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '',
                ),
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
