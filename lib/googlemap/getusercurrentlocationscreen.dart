import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetUserCurrentLocationScreen extends StatefulWidget {
  const GetUserCurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<GetUserCurrentLocationScreen> createState() =>
      _GetUserCurrentLocationScreenState();
}
class _GetUserCurrentLocationScreenState
    extends State<GetUserCurrentLocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _kgoogleplex =
      CameraPosition(target: LatLng(17.3616, 78.4747), zoom: 14);

  final List<Marker> _markers = [
    const Marker(
      markerId: MarkerId("2"),
      infoWindow: InfoWindow(title: "location1"),
      position: LatLng(17.3616, 78.4747),
    )
  ];
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) { })
        .onError((error, stackTrace) {
      print('error $error');
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GoogleMap(
          initialCameraPosition: _kgoogleplex,
          markers: Set.of(_markers),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: FloatingActionButton(
              child: const Icon(Icons.location_disabled_outlined),
              onPressed: ()  {
                getUserCurrentLocation().then((value) async {
                  print("${value.latitude}   ${value.longitude}");

                  _markers.add(
                    Marker(
                      markerId: MarkerId("2"),
                      position: LatLng(value.latitude, value.longitude),
                      infoWindow: InfoWindow(title: "location2"),
                    ),
                  );

                  CameraPosition cameraPosition = CameraPosition(
                    target: LatLng(value.latitude, value.longitude),
                    zoom: 14,
                  );
                  final GoogleMapController controller =
                      await _controller.future;
                  controller.animateCamera(
                      CameraUpdate.newCameraPosition(cameraPosition));

                  setState(() {});
                });
              }),
        ));
  }
}
