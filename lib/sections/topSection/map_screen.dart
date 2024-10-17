import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  double _originLatitude = -1.24277, _originLongitude = 36.76175;
  double _destLatitude = -0.7853, _destLongitude = 37.3483;

  final double _initialLatitude = -2.4; // Midpoint latitude (0 to -4.8)
  final double _initialLongitude = 40.83; // Midpoint longitude (34.33 to 47.33)

  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleApiKey = "AIzaSyDJJtqIATSCnOG-jZtXjje8PAL9ONgClaA";

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _addMarker(
      LatLng(_originLatitude, _originLongitude),
      "Power Learn Project, HQ",
      BitmapDescriptor.defaultMarker,
      "This is the headquarters of the Power Learn Project.",
    );
    _addMarker(
      LatLng(_destLatitude, _destLongitude),
      "Zetech Technology Park",
      BitmapDescriptor.defaultMarkerWithHue(90),
      "This is Zetech Technology Park.",
    );
    _getPolyline(); // Start fetching polyline
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(_initialLatitude, _initialLongitude), // Updated position
                zoom: 6, // Adjust zoom level as needed
              ),
              myLocationEnabled: true,
              tiltGesturesEnabled: true,
              compassEnabled: true,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              onMapCreated: _onMapCreated,
              markers: Set<Marker>.of(markers.values),
              polylines: Set<Polyline>.of(polylines.values),
            ),
            if (isLoading) // Show loading indicator while fetching
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarker(LatLng position, String id, BitmapDescriptor descriptor, String info) {
    MarkerId markerId = MarkerId(id);
    Marker marker = Marker(
      markerId: markerId,
      icon: descriptor,
      position: position,
      infoWindow: InfoWindow(
        title: id, // Title of the info window
        snippet: info, // Additional information
      ),
    );
    markers[markerId] = marker;
  }

  void _addPolyLine() {
    PolylineId id = const PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 5, // Optional: Customize line width
    );
    polylines[id] = polyline;
    setState(() {
      isLoading = false; // Hide loading indicator
    });
  }

  Future<void> _getPolyline() async {
    try {
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: googleApiKey,
        request: PolylineRequest(
          origin: PointLatLng(_originLatitude, _originLongitude),
          destination: PointLatLng(_destLatitude, _destLongitude),
          mode: TravelMode.driving,
          wayPoints: [],
        ),
      );

      if (result.points.isNotEmpty) {
        for (var point in result.points) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        }
      }
      _addPolyLine();
    } catch (e) {
      // Log the error and show a snackbar
      print('Error fetching route: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching route: $e')),
      );
    }
  }

  @override
  void dispose() {
    mapController.dispose(); // Dispose of the controller
    super.dispose();
  }
}
