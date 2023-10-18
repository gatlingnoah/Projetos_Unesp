// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:app_berna/pages/fCorretivos.dart';
import 'package:app_berna/pages/sobre.dart';
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
      body: Card(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
                child: Text(
                    ' Cálculos de emissões de gases de efeito estufa, e de demanda de energia pela cultura Batata',
                    style: TextStyle(
                        fontSize: 26.0, fontWeight: FontWeight.bold))),
            Card(
              child: SizedBox(
                height: 400,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/logo_unesp.png'),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/logo_grupo.png'),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/logo_pv.png'),
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 20.0),
            Container(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CorretivosBuild(),
                      ),
                    );
                  },
                  child: Wrap(
                    children: const <Widget>[
                      Icon(Icons.dashboard_customize_sharp, size: 24.0),
                      SizedBox(width: 10),
                      Text("Cálculos", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // chamar a build sobre
                            builder: (context) => Sobre()));
                  },
                  child: Wrap(
                    children: const <Widget>[
                      Icon(Icons.supervised_user_circle, size: 24.0),
                      SizedBox(width: 10),
                      Text("Sobre", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
