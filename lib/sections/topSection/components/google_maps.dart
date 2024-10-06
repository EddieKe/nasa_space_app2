import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  List _emissionsData = [];
  Set<Marker> _markers = {};

  Future<void> _fetchEmissionsData() async {
    try {
      final response = await http.get(Uri.parse('http://127.0.0.1:5000/api/emissions')); // Use your local IP
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
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
      } else {
        print('Failed to load emissions data');
      }
    } catch (error) {
      print('Error fetching emissions data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchEmissionsData();
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
