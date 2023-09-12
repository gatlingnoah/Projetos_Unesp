// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Instrucoes extends StatefulWidget {
  const Instrucoes({super.key});

  @override
  _InstrucoesState createState() => _InstrucoesState();
}

class _InstrucoesState extends State<Instrucoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(8.0)),
            Center(
              child: Text(
                'Construindo a Armação',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            DataTable(
              columns: [
                DataColumn(
                  label: Text(
                    'Operação',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Modelo',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Armação',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: [
                DataRow(cells: const [
                  DataCell(Text('Arranquio')),
                  DataCell(Text('2 x 1')),
                  DataCell(Text('1,80 x 1,11m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Arranquio')),
                  DataCell(Text('4 x 2')),
                  DataCell(Text('3,60 x 0,56m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Arranquio')),
                  DataCell(Text('6 x 3')),
                  DataCell(Text('5,40 x 0,37m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Double Master 1')),
                  DataCell(Text('1,50 x 0,55m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Double Master 2')),
                  DataCell(Text('1,50 x 0,55m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Double Master 3')),
                  DataCell(Text('1,62 x 1,33m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Double Master 4')),
                  DataCell(Text('1,84 x 1,23m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Advanced')),
                  DataCell(Text('3,44 x 0,58m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('MIAC Twin')),
                  DataCell(Text('5,45 x 0,37m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('KBM 3384BR')),
                  DataCell(Text('3,83 x 0,52m')),
                ]),
                DataRow(cells: const [
                  DataCell(Text('Reconlhimento')),
                  DataCell(Text('KBM 3386BR')),
                  DataCell(Text('6,38 x 0,31m')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
