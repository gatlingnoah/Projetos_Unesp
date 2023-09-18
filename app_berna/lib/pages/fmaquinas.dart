// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names

import 'package:app_berna/pages/resultado_screen.dart';
import 'package:app_berna/widget/drop_teste.dart';
import 'package:app_berna/widget/dropdown_irrigacao.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

const List<String> Irrigacao = <String>[
  'Irrigação Tipo G',
  'Irrigação Tipo J',
  'Irrigação Tipo A'
];
const List<String> TESTE = <String>['Marca 1', 'Marca 2', 'Marca 3'];

String IrrigacaoValue = Irrigacao.first;
String TESTEValue = TESTE.first;

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
        title: const Text('Máquinarios'),
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
                  "Litros de Diesel",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),

                //const Divider(height: 15),
                // Tratores (90 a 210 cv), arado, subsolador, rolo nivelador,
                // grade, adubadora, pulverizador e colhedora.

                // Título para Implementos
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Icon(
                      Icons.agriculture,
                      size: 24.0,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Implementos",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Linha: Tratores (90 a 210 cv) Grade e Arado
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Grade',
                        hintText: 'L/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Arado',
                        hintText: 'L/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Subsolador, Rolo nivelador
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Subsolador',
                        hintText: 'L/ha',
                        //prefixIcon: Icons.agriculture, Hidroxido de Cobre
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Espaço entre os Expanded
                    SizedBox(width: 5.0),

                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Rolo nivelador',
                        hintText: 'L/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Título para Máquinas
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Icon(
                      Icons.agriculture,
                      size: 24.0,
                      color: Colors
                          .greenAccent, // Altere a cor conforme necessário
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Máquinas",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Row Adubadora, Pulverizador
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Adubadora',
                        hintText: 'L/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Espaço entre os Expanded
                    SizedBox(width: 5.0),

                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Pulverizador',
                        hintText: 'L/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row Colhedora
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Colhedora',
                        hintText: 'L/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row Tratores (90 a 210 cv)
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: dadosController,
                        labelText: 'Tratores (90 a 210 cv)',
                        hintText: 'L/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
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

                // Título para TESTE
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Icon(
                      Icons.access_alarm_outlined,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "TESTE",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Linha: Tratores (90 a 210 cv) Grade e Arado
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownTESTE(),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Ureia',
                        hintText: 'L/ha',
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
