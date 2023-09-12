import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';

class SearchPlacesSearch extends StatefulWidget {
  const SearchPlacesSearch({super.key});

  @override
  State<SearchPlacesSearch> createState() => _SearchPlacesSearchState();
}

const kGoogleApikey = '';
final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _SearchPlacesSearchState extends State<SearchPlacesSearch> {
  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(-23.550520, -46.633309), zoom: 15);

  Set<Marker> markerList = {};

  late GoogleMapController googleMapController;

  final Mode _mode = Mode.overlay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      appBar: AppBar(
        title: const Text('Google Maps Search'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: initialCameraPosition,
            markers: markerList,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              googleMapController = controller;
            },
          ),
          ElevatedButton(
              onPressed: _handlePressButton,
              child: const Text('Seacrh Pleaces'))
        ],
      ),
    );
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApikey,
        onError: onError,
        mode: _mode,
        language: 'en',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white))),
        components: [Component(Component.country, 'pk')]);

    displayPrediction(p!, homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response) {
    /*
    homeScaffoldKey.currentState! https://www.youtube.com/watch?v=Gcw1-8DpqCI
        .showSnackBar(SnackBar(content: Text(response.errorMessage!)));*/
  }

  Future<void> displayPrediction(
      Prediction p, ScaffoldState? currentState) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: kGoogleApikey,
        apiHeaders: await const GoogleApiHeaders().getHeaders());

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);
  }
}
