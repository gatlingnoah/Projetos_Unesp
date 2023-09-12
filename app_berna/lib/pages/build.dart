// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables

//import 'package:app_berna/fertilizantes_screen.dart';
import 'package:app_berna/fertilizantes_screen.dart';
import 'package:app_berna/pages/equacao.dart';
import 'package:app_berna/pages/resultado_screen.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';

const List<String> fertilizantes = <String>[
  'N fertilizante (N)', // Ureia, Nitrato de Cálcio, MAP, Formulados
  'P fertilizante (P2O5)', // MAP, Formulados
  'K fertilizante (K2O)', // Cloreto de potássio, Formulados
  'Calagem',
  'Gesso'
];

const List<String> perdas = <String>['Irrigação G', 'Irrigação J'];
const List<String> pesticidas = <String>[
  'Herbicidas', // Metribuzim, Triazinona
  'Fungicida', // Oxcloreto de cobre, Mancozebe, Hidroxido de Cobre
  'Inseticida' // Acefato, Cloridrato de Formentanato, Metomil
];

String fertilizantesValue = fertilizantes.first;
String pesticidasValue = pesticidas.first;
String perdasValue = perdas.first;

class Calculo extends StatefulWidget {
  const Calculo({super.key});

  @override
  _CalculoState createState() => _CalculoState();
}

class _CalculoState extends State<Calculo> {
  final dadosController = TextEditingController();
  String textChange = '';

  // função void para alterar o estado do text
  void calling() {
    setState(() {
      textChange = Equacao().calculing(fertilizantesValue, pesticidasValue,
          perdasValue, dadosController.text);
      // print(textChange);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 6,
        color: Color.fromARGB(255, 217, 218, 216),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 600, child: CheckboxListFertilizantes()),

                const SizedBox(height: 20), // size pra distancia

                // TextField Maquinas
                CustomTextField(
                  controller: TextEditingController(),
                  labelText: 'Diesel (L)',
                  prefixIcon: Icons.agriculture,
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 20),
                // Botão Calcular
                ElevatedButton(
                  onPressed: () {
                    calling();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultadoScreen()),
                    );
                  },
                  child: Wrap(
                    children: <Widget>[
                      Icon(
                        Icons.dashboard_customize_sharp,
                        //color: Colors.pink,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Estimar Gases", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
      decoration: InputDecoration(labelText: 'Irrigação'),
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

// Dropdown Pesticidas
class DropdownPesticidas extends StatefulWidget {
  const DropdownPesticidas({super.key});

  @override
  State<DropdownPesticidas> createState() => _DropdownPesticidasState();
}

class _DropdownPesticidasState extends State<DropdownPesticidas> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: pesticidasValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Pesticidas'),
      onChanged: (String? value) {
        setState(() {
          pesticidasValue = value!;
        });
      },
      items: pesticidas.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
