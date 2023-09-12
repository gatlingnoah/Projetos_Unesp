// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_berna/pages/build.dart';
import 'package:flutter/material.dart';

class DropdownFertilizantes extends StatefulWidget {
  const DropdownFertilizantes({super.key});

  @override
  State<DropdownFertilizantes> createState() => _DropdownFertilizantesState();
}

class _DropdownFertilizantesState extends State<DropdownFertilizantes> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: fertilizantesValue,
      elevation: 4,
      borderRadius: BorderRadius.circular(30),
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Fertizantes'),
      onChanged: (String? value) {
        setState(() {
          fertilizantesValue = value!;
        });
      },
      items: fertilizantes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
