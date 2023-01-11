import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kgoogleplex =
      CameraPosition(target: LatLng(17.436873, 78.367046), zoom: 14.143);

  final List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(20.000426,73.737828),
      infoWindow: InfoWindow(title: "my location"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(17.438828, 78.364218),
      infoWindow: InfoWindow(title: "my location 2"),
    ),
    Marker(
      markerId: MarkerId("3"),
      position: LatLng(13.201677,79.120574),
      infoWindow: InfoWindow(title: "my location 2"),
    ),

    Marker(
      markerId: MarkerId("4"),
      position: LatLng(28.611952,77.173166),
      infoWindow: InfoWindow(title: "my location 2"),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 100),
        child: FloatingActionButton(

          child: const Icon(Icons.location_disabled_outlined),
          onPressed: () async {


            GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(
                const CameraPosition(target: LatLng(20.000426,73.737828), zoom: 14)));
            setState(() {

            });
          },
        ),
      ) ,
      body: SafeArea(
        child: GoogleMap(
          // myLocationEnabled: true,
          // compassEnabled: true,
          markers: Set<Marker>.of(_marker),

          mapType: MapType.satellite,
          initialCameraPosition: _kgoogleplex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}

