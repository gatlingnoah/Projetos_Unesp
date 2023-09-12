// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_sapeca/pages/equacao.dart';
import 'package:flutter/material.dart';

const List<String> variedade = <String>[
  'Runner IAC 886',
  'Granoleico',
  'Georgia 06-G',
  'OL 3'
];
const List<String> operacoes = <String>['Arranquio', 'Recolhimento'];
const List<String> perdas = <String>['Visível', 'Invisível'];
const List<String> solo = <String>['Arenoso', 'Argiloso'];

String variedadeValue = variedade.first;
String operacoesValue = operacoes.first;
String soloValue = solo.first;
String perdasValue = perdas.first;

class Calculo extends StatefulWidget {
  const Calculo({super.key});

  @override
  _CalculoState createState() => _CalculoState();
}

class _CalculoState extends State<Calculo> {
  final dadosController = TextEditingController();
  String textChange = '';

  void calling() {
    setState(() {
      textChange = Equacao().calculing(variedadeValue, operacoesValue,
          soloValue, perdasValue, dadosController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  const DropdownVariedade(),
                  const DropdownOperacoes(),
                  const DropdownPerdas(),
                  const DropdownSolo(),

                  const SizedBox(height: 30), // size pra distancia

                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.dashboard_customize_sharp),
                        hintText: 'Quantidade de Vagens contadas'),
                    controller: dadosController,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      calling();
                    },
                    child: const Text('CALCULAR'),
                  ),

                  const SizedBox(height: 30),

                  Text(
                    textChange,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  RaisedButton({required Null Function() onPressed, required Text child}) {}
}

// Dropdown Variedade
class DropdownVariedade extends StatefulWidget {
  const DropdownVariedade({super.key});

  @override
  State<DropdownVariedade> createState() => _DropdownVariedadeState();
}

class _DropdownVariedadeState extends State<DropdownVariedade> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: variedadeValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Variedade'),
      onChanged: (String? value) {
        setState(() {
          variedadeValue = value!;
        });
      },
      items: variedade.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Operações
class DropdownOperacoes extends StatefulWidget {
  const DropdownOperacoes({super.key});

  @override
  State<DropdownOperacoes> createState() => _DropdownOperacoesState();
}

class _DropdownOperacoesState extends State<DropdownOperacoes> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: operacoesValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Operações'),
      onChanged: (String? value) {
        setState(() {
          operacoesValue = value!;
        });
      },
      items: operacoes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Perdas
class DropdownPerdas extends StatefulWidget {
  const DropdownPerdas({super.key});

  @override
  State<DropdownPerdas> createState() => _DropdownPerdasState();
}

class _DropdownPerdasState extends State<DropdownPerdas> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: perdasValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Perdas'),
      onChanged: (String? value) {
        setState(() {
          perdasValue = value!;
        });
      },
      items: perdas.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Solo
class DropdownSolo extends StatefulWidget {
  const DropdownSolo({super.key});

  @override
  State<DropdownSolo> createState() => _DropdownSoloState();
}

class _DropdownSoloState extends State<DropdownSolo> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: soloValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Solo'),
      onChanged: (String? value) {
        setState(() {
          soloValue = value!;
        });
      },
      items: solo.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
