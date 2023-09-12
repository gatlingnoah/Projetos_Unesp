// ignore_for_file: prefer_final_fields
//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  static CameraPosition _kGooglePlex = const CameraPosition(
    // posição da pessoa
    // search da cidade
    // lugar especifico
    // salvar os locais
    target: LatLng(-23.550520, -46.633309),
    zoom: 35, // 40
  );
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Maps'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          GoogleMap(initialCameraPosition: _kGooglePlex),
        ]),
      ),
    );
  }
}
