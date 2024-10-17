import 'package:flutter/material.dart';
// import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  List _emissionsData = [];
  Set<Marker> _markers = {};

  // Mock data function
  Future<void> _fetchEmissionsData() async {
    try {
      // Simulating a delay like a network request
      await Future.delayed(Duration(seconds: 2));

      // Mock emissions data
      List data = [
        {
          "location": "New York",
          "coordinates": [40.7128, -74.0060],
          "emissions": "500 tons CO2"
        },
        {
          "location": "Los Angeles",
          "coordinates": [34.0522, -118.2437],
          "emissions": "300 tons CO2"
        },
        {
          "location": "Chicago",
          "coordinates": [41.8781, -87.6298],
          "emissions": "400 tons CO2"
        }
      ];

      setState(() {
        _emissionsData = data;
        _markers = data.map((item) {
          return Marker(
            markerId: MarkerId(item['location']),
            position: LatLng(item['coordinates'][0], item['coordinates'][1]),
            infoWindow: InfoWindow(
              title: item['location'],
              snippet: 'Emissions: ${item['emissions']}',
            ),
          );
        }).toSet();
      });
    } catch (error) {
      // Detailed error message
      print('Error fetching emissions data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchEmissionsData(); // Fetching mock data on initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _emissionsData.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(40.7128, -74.0060), // Default position (New York)
                zoom: 5,
              ),
              markers: _markers,
            ),
    );
  }
}
