// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api, constant_identifier_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_berna/pages/fCorretivos.dart';
import 'package:flutter/material.dart';

class DropdownNPK extends StatefulWidget {
  const DropdownNPK({super.key});

  @override
  State<DropdownNPK> createState() => _DropdownNPKState();
}

class _DropdownNPKState extends State<DropdownNPK> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: fosfatoValue,
      elevation: 4,
      autofocus: false,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Fosfato'),
      onChanged: (String? value) {
        setState(() {
          fosfatoValue = value!;
        });
      },
      items: fosfato.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
