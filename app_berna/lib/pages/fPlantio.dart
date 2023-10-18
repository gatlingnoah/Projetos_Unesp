// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names

import 'package:app_berna/pages/fCobertura.dart';
import 'package:app_berna/widget/dropdown_npk.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';

// Lista de NPK
const List<String> NPK = <String>[
  '4-16-4',
  '2-10-4',
  '8-28-4',
  '4-16-5',
  '8-2-4',
  '4-10-5',
];

String NPKValue = NPK.first;

class FertilizantesPlantioBuild extends StatefulWidget {
  const FertilizantesPlantioBuild({super.key});

  @override
  State<FertilizantesPlantioBuild> createState() =>
      _FertilizantesPlantioBuildState();
}

class _FertilizantesPlantioBuildState extends State<FertilizantesPlantioBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculos'),
        centerTitle: true,
      ),
      body: Card(
        elevation: 5,
        color: Color.fromARGB(255, 246, 255, 246),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Fertilizantes no Plantio",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Dose (kg/Ha)",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),

                // Row Ureia
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Ureia:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Nitrato de Cálcio
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Nitrato de Cálcio:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Nitrato de Potássio
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Nitrato de Potássio:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Cloreto de Potássio
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Cloreto de Potássio:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row MAP
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "MAP:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Superfosfato Simples
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Superfosfato Simples:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Superfosfato Triplo
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Superfosfato Triplo:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Esterco Bovino
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Esterco Bovino:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: '',
                        hintText: '',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        " Kg/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Linha Dropdown NPK
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: SizedBox(
                        width: 260,
                        child: DropdownNPK(),
                      ),
                    ),
                  ],
                ),

                // Botão Proximo Page
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          // chamar a build Plantio
                          builder: (context) => FertilizantesCoberturaBuild()),
                    );
                  },
                  child: Wrap(
                    children: const <Widget>[
                      Icon(Icons.dashboard_customize_sharp, size: 24.0),
                      SizedBox(width: 10),
                      Text("Proximo", style: TextStyle(fontSize: 17)),
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
