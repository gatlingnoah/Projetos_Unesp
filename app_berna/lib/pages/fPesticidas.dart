// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names

import 'package:app_berna/pages/fmaquinas.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';

class FertilizantesPesticidasBuild extends StatefulWidget {
  const FertilizantesPesticidasBuild({super.key});

  @override
  State<FertilizantesPesticidasBuild> createState() =>
      _FertilizantesPesticidasBuildState();
}

class _FertilizantesPesticidasBuildState
    extends State<FertilizantesPesticidasBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesticidas'),
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
                  "Dose por Hectare",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),

                //const Divider(height: 15),

                // Título para Triazinona e Metribuzim
                const Row(
                  children: [
                    Icon(
                      Icons.analytics_sharp,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Herbicidas",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Linha: Triazinona e Metribuzim
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Metribuzim',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Triazinona',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Título para Fungicida
                const SizedBox(height: 15.0),
                const Row(
                  children: [
                    Icon(
                      Icons.analytics_sharp,
                      size: 24.0,
                      color:
                          Colors.blueAccent, // Altere a cor conforme necessário
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Fungicida",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Oxcloreto de cobre, Mancozebe
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Oxcloreto de cobre',
                        hintText: 'k/ha',
                        //prefixIcon: Icons.agriculture, Hidroxido de Cobre
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Espaço entre os Expanded
                    SizedBox(width: 5.0),

                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Mancozebe',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row Hidroxido de Cobre
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Hidroxido de Cobre',
                        hintText: 'k/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                // Título para Inseticida
                const SizedBox(height: 15.0),
                const Row(
                  children: [
                    Icon(
                      Icons.analytics_outlined,
                      size: 24.0,
                      color: Colors.green, // Altere a cor conforme necessário
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Inseticida",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Row Acefato, Metomil
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Acefato',
                        hintText: 'k/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Espaço entre os Expanded
                    SizedBox(width: 5.0),

                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Metomil',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row Cloridrato de Formentanato
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Cloridrato de Formentanato',
                        hintText: 'k/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
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
                        builder: (context) =>
                            MaquinasBuild(), // chamar a build Plantio
                      ),
                    );
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
