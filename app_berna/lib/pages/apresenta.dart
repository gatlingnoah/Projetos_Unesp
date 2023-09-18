// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PresentationScreen(),
    );
  }
}

class PresentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   // Use uma imagem de fundo relacionada ao meio ambiente aqui.
        //   image: DecorationImage(
        //     image: AssetImage('assets/environment_bg.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Emissões de Gases de Efeito Estufa',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Seja um defensor do meio ambiente! Nosso aplicativo permite que você estime e '
              'controle suas emissões pessoais de gases de efeito estufa. Juntos, '
              'podemos criar um futuro mais sustentável.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Navegue para a próxima tela do aplicativo aqui.
              },
              child: Text(
                'Começar',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
