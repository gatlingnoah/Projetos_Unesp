// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names, file_names

import 'package:app_berna/pages/fPlantio.dart';
//import 'package:app_berna/widget/dropdown_npk.dart';
import 'package:app_berna/widget/text_field.dart';
import 'package:flutter/material.dart';

// Lista de Fosfato
const List<String> fosfato = <String>[
  'Fosfato Natural',
  'Superfosfato Simples',
  'Superfosfato Triplo'
];

String fosfatoValue = fosfato.first;

class CorretivosBuild extends StatefulWidget {
  const CorretivosBuild({super.key});

  @override
  State<CorretivosBuild> createState() => _CorretivosBuildState();
}

class _CorretivosBuildState extends State<CorretivosBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculos'),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            color: Color.fromARGB(255, 246, 255, 246),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Scrollbar(
                child: Column(
                  children: [
                    Text(
                      "Corretivos",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),

                    // Linha Dropdown NPK
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: const [
                    //     Expanded(
                    //       child: SizedBox(
                    //         width: 260,
                    //         child: DropdownNPK(),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    // Row Calagem
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 105,
                          child: Expanded(
                            child: Text(
                              "Calagem:",
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
                            " T/ha de Calcário",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    // Row Gessagem
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 105,
                          child: Expanded(
                            child: Text(
                              "Gessagem:",
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
                            " T/ha de Gesso",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    // Row Fosfatagem
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 105,
                          child: Expanded(
                            child: Text(
                              "Fosfatagem:",
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
                            " T/ha de Fosforo",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    // Row Potassagem
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 105,
                          child: Expanded(
                            child: Text(
                              "Potassagem:",
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
                            " T/ha de Potassio",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0),
                    const Row(
                      children: [
                        Icon(Icons.analytics_outlined,
                            size: 24.0, color: Colors.green),
                        SizedBox(width: 10),
                        Text(
                          "Produção",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),

                    // Row Produtividade esperada
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 110,
                          child: Expanded(
                            child: Text(
                              "Produtividade esperada:",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: TextEditingController(),
                            labelText: '',
                            hintText: 'T/ha',
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    // Row Área cultivada
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 110,
                          child: Expanded(
                            child: Text(
                              "Área cultivada:",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: TextEditingController(),
                            labelText: '',
                            hintText: 'ha',
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
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
                                  FertilizantesPlantioBuild()),
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
        ],
      ),
    );
  }
}
