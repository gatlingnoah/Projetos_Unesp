import 'package:flutter/material.dart';
import 'package:app_sapeca/pages/calculo.dart';
import 'package:app_sapeca/pages/instrucoes.dart';
import 'package:app_sapeca/pages/sobre.dart';

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
                Tab(
                  icon: Icon(Icons.agriculture),
                  text: 'Instruções',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Sobre',
                ),
              ],
            ),
            title: const Text('SAPECA'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 65, 168, 69),
          ),
          body: TabBarView(
            children: <Widget>[const Calculo(), const Instrucoes(), Sobre()],
          ),
        ),
      ),
    );
  }
}
