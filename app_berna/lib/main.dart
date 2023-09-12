//import 'package:app_berna/pages/instrucoes.dart';
import 'package:flutter/material.dart';
import 'package:app_berna/pages/build.dart';
import 'package:app_berna/pages/sobre.dart';

void main() {
  runApp(const AppSapeca());
}

class AppSapeca extends StatelessWidget {
  const AppSapeca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.calculate),
                  text: 'Cálculo',
                ),
                // Tab(
                //   icon: Icon(Icons.calculate),
                //   text: 'Instruções',
                // ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Sobre',
                ),
              ],
            ),
            title: const Text('BernaApp'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 117, 151, 22),
          ),
          body: TabBarView(
            children: <Widget>[
              // Minhas Telas
              const Calculo(),
              //const Instrucoes(),
              Sobre(),
            ],
          ),
        ),
      ),
    );
  }
}
