import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatelessWidget {
final LatLng location;
const MapScreen({super.key, required this.location});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Nearby Help')),
body: GoogleMap(
initialCameraPosition: CameraPosition(target: location, zoom: 14),
markers: {
Marker(markerId: const MarkerId('me'), position: location),
},
),
);
}
}