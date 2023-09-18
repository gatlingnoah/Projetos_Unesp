// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api, constant_identifier_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_berna/pages/fCobertura.dart';
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
      value: NPKValue,
      elevation: 4,
      autofocus: false,
      //borderRadius: BorderRadius.circular(30),
      isExpanded: true,
      decoration: InputDecoration(labelText: 'NPK'),
      onChanged: (String? value) {
        setState(() {
          NPKValue = value!;
        });
      },
      items: NPK.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
