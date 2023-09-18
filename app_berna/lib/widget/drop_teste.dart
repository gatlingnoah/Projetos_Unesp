// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api, constant_identifier_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_berna/pages/fmaquinas.dart';
import 'package:flutter/material.dart';

// Dropdown TESTE
class DropdownTESTE extends StatefulWidget {
  const DropdownTESTE({super.key});

  @override
  State<DropdownTESTE> createState() => _DropdownTESTEState();
}

class _DropdownTESTEState extends State<DropdownTESTE> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: TESTEValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'TESTE'),
      onChanged: (String? value) {
        setState(() {
          TESTEValue = value!;
        });
      },
      items: TESTE.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
