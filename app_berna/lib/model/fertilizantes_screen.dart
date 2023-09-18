import 'package:app_berna/model/checkbox_state.dart';
import 'package:flutter/material.dart';

class CheckboxListFertilizantes extends StatefulWidget {
  const CheckboxListFertilizantes({super.key});

  @override
  State<CheckboxListFertilizantes> createState() =>
      _CheckboxListFertilizanteState();
}

class _CheckboxListFertilizanteState extends State<CheckboxListFertilizantes> {
  final typeFertilizantes = [
    CheckBoxState(titulo: 'Calagem'),
    CheckBoxState(titulo: 'Gesso')
  ];

  final typeNitrogenio = [
    CheckBoxState(titulo: 'Ureia'),
    CheckBoxState(titulo: 'Nitrato de Cálcio'),
    CheckBoxState(titulo: 'MAP'),
    CheckBoxState(titulo: 'Formulados')
  ];
  final typeFosforo = [
    CheckBoxState(titulo: 'MAP'),
    CheckBoxState(titulo: 'Formulados')
  ];
  final typePotassio = [
    CheckBoxState(titulo: 'Cloreto de potássio'),
    CheckBoxState(titulo: 'Formulados')
  ];

  // 'N fertilizante (N)', // Ureia, Nitrato de Cálcio, MAP, Formulados
  // 'P fertilizante (P2O5)', // MAP, Formulados
  // 'K fertilizante (K2O)', // Cloreto de potássio, Formulados
  // 'Calagem',
  // 'Gesso'
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fertilizantes',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // N fertilizante (N)
            const Divider(height: 0),
            const Text("N fertilizante (N)", style: TextStyle(fontSize: 15)),
            ...typeNitrogenio.map(buildSingleCheckBox).toList(),

            // P fertilizante (P2O5)
            const Divider(height: 0),
            const Text("P fertilizante (P2O5)", style: TextStyle(fontSize: 15)),
            ...typeFosforo.map(buildSingleCheckBox).toList(),

            //K fertilizante (K2O)
            const Divider(height: 0),
            const Text("K fertilizante (K2O)", style: TextStyle(fontSize: 15)),
            ...typePotassio.map(buildSingleCheckBox).toList(),

            // Outros
            const Divider(height: 0),
            ...typeFertilizantes.map(buildSingleCheckBox).toList(),
            const Divider(height: 0),
          ],
        ),
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: checkbox.valor,
        onChanged: (bool? value) {
          setState(() {
            checkbox.valor = value!;
          });
        },
        //secondary: const Icon(Icons.ac_unit),
        autofocus: false,
        activeColor: Colors.green,
        checkColor: Colors.black,
        title: Text(
          checkbox.titulo,
          style: const TextStyle(fontSize: 15),
        ),
      );
}
