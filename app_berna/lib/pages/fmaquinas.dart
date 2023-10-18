// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names

import 'package:app_berna/pages/resultado_screen.dart';
import 'package:app_berna/widget/dropdown_irrigacao.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

const List<String> Irrigacao = <String>[
  'Elétrica',
  'Diesel',
  'Biscombustivel',
  'Eólica'
];

String IrrigacaoValue = Irrigacao.first;

class MaquinasBuild extends StatefulWidget {
  const MaquinasBuild({super.key});

  @override
  State<MaquinasBuild> createState() => _MaquinasBuildState();
}

class _MaquinasBuildState extends State<MaquinasBuild> {
  final dadosController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Máquinarios - Operações'),
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
                  "Informe a quantidade de diesel nas operações com maquinas e irrigação",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),

                // Row Preparo de solo
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Preparo de solo:",
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
                        " L/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Adubação de plantio e cobertura
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Adubação de plantio e cobertura:",
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
                        " L/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Controle fitossanitario e ad. foliar
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Controle fitossanitario e ad. foliar:",
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
                        " L/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Coheita
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Coheita:",
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
                        " L/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Row Transporte para packing house
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Expanded(
                        child: Text(
                          "Transporte para packing house:",
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
                        " L/Ha",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Título para Irrigação
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Icon(
                      Icons.water_drop_outlined,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Irrigação",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Linha: Irrigação
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: DropdownIrrigacao(),
                    ),
                    SizedBox(width: 5.0),
                  ],
                ),

                // Botão Proximo Page
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ResultadoScreen(), // chamar a build Plantio
                      ),
                    );

                    developer.log(dadosController.text,
                        name: 'fMaquinas.MaquinasBuild.ElevatedButton');
                  },
                  child: Wrap(
                    children: const <Widget>[
                      Icon(
                        Icons.dashboard_customize_sharp,
                        //color: Colors.pink,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Calcular", style: TextStyle(fontSize: 17)),
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
