// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names

import 'package:app_berna/pages/fPlantio.dart';
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

class FertilizantesCoberturaBuild extends StatefulWidget {
  const FertilizantesCoberturaBuild({super.key});

  @override
  State<FertilizantesCoberturaBuild> createState() =>
      _FertilizantesCoberturaBuildState();
}

class _FertilizantesCoberturaBuildState
    extends State<FertilizantesCoberturaBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fertilizantes Cobertura'),
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

                // Linha: Ureia e Nitrato de Cálcio
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Ureia',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Nitrato de Cálcio',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row Cloreto de potássio e Drowdown NPK
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Cloreto de potássio',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Espaço entre os Expanded
                    SizedBox(width: 5.0),

                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'MAP',
                        hintText: 'k/ha',
                        //prefixIcon: Icons.agriculture,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Linha Dropdown NPK
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
                // Espaço
                const SizedBox(height: 15.0),

                // Título para Superfosfato
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
                      "Superfosfato",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // // Superfosfato Simples e Triplo
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Simples',
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
                        labelText: 'Triplo',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                // Espaço
                const SizedBox(height: 15.0),

                // Título para Corretivos
                const Row(
                  children: [
                    Icon(
                      Icons.analytics_outlined,
                      size: 24.0,
                      color: Colors.green, // Altere a cor conforme necessário
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Corretivos",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Row Gesso e Calagem
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: 'Gesso',
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
                        labelText: 'Calagem',
                        hintText: 'k/ha',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                // Row MAP
                const SizedBox(height: 15.0),

                // Botão Proximo Page
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FertilizantesPlantioBuild(), // chamar a build Plantio
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
