import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class getLocationUser extends StatefulWidget {
  const getLocationUser({super.key});

  @override
  State<getLocationUser> createState() => _getLocationUserState();
}

class _getLocationUserState extends State<getLocationUser> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-23.550520, -46.633309),
    zoom: 14.4746,
  );

  List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(-23.550520, -46.633309),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  ///lucas.natan@unesp.br

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            markers: Set<Marker>.of(_marker),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ],
      ),
    );
  }
}
