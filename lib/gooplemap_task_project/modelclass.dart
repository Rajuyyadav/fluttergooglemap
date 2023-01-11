import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Model with ChangeNotifier{


   int currentValue = 0;

void setValue(int index){
  currentValue = index;
  notifyListeners();

}

   List<String> lstNam = [
     "Hyderabad",
     "Delhi",
     "Bangalore",
     "Mumbai",
     "Noida",
   ];


  Future<Position> findCurrentLocation()async{
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace) {
      print("error is : $error");

    });
    notifyListeners();

    return await Geolocator.getCurrentPosition();



  }

   Future getCurrentLocation(List<Marker> _markers,Completer<GoogleMapController> _controller) async{
     findCurrentLocation().then((value) async{
       print("${value.longitude}====${value.latitude}");

       _markers.add(Marker(markerId: const MarkerId("1"),
         infoWindow: const InfoWindow(title: "currentLocation*"),
         position: LatLng(value.latitude, value.longitude),

       ),);

       CameraPosition cameraPosition = CameraPosition(target: LatLng(value.latitude, value.longitude),
         zoom: 14,
       );

       GoogleMapController gmcontroller = await _controller.future;
       gmcontroller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

       // setState(() {
       // });
     });}

}
