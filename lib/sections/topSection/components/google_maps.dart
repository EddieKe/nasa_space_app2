import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController? mapController; // Make the controller nullable

  @override
  void initState() {
    super.initState();
    _getCurrentLocation(); // Fetch location when the widget is initialized
  }

  // Method to set the controller when the map is created
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _getCurrentLocation(); // Move the camera to the user's current location
  }

  Future<void> _getCurrentLocation() async {
    // Ensure permissions are granted
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return early
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    if (mapController != null) {
      // Ensure the controller is initialized before using it
      mapController!.animateCamera(CameraUpdate.newLatLng(
        LatLng(position.latitude, position.longitude),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(0, 0), // Default to a neutral position before fetching location
                zoom: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
