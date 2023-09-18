// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api, constant_identifier_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_berna/pages/fmaquinas.dart';
import 'package:flutter/material.dart';

// Dropdown Irrigacao
class DropdownIrrigacao extends StatefulWidget {
  const DropdownIrrigacao({super.key});

  @override
  State<DropdownIrrigacao> createState() => _DropdownIrrigacaoState();
}

class _DropdownIrrigacaoState extends State<DropdownIrrigacao> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: IrrigacaoValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Irrigação'),
      onChanged: (String? value) {
        setState(() {
          IrrigacaoValue = value!;
        });
      },
      items: Irrigacao.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
