import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap/gooplemap_task_project/secondscreen_chn.dart';
import 'package:googlemap/gooplemap_task_project/secondscreen_hyd.dart';
import 'package:googlemap/gooplemap_task_project/secondscreenbng.dart';
import 'package:provider/provider.dart';

import 'modelclass.dart';

class GMTFirstScreen extends StatefulWidget {
  const GMTFirstScreen({Key? key}) : super(key: key);
  @override
  State<GMTFirstScreen> createState() => _GMTFirstScreenState();
}

class _GMTFirstScreenState extends State<GMTFirstScreen> {
  List wid = const [SecondScreenHyd(), SecondScreenBng(), SecondScreenChn()];
  List<String> cList = [
    "hyd".toUpperCase(),
    "bng".toUpperCase(),
    "chn".toUpperCase(),
    // "chn".toUpperCase(),
  ];

  //
  //
  // int _currentValue = 0;
  // Widget getData() {
  //   return Container(
  //     child: wid[_currentValue],
  //   );
  // }
  //
  // Widget citiesData(var item, int index) {
  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //         print('$index');
  //         _currentValue = index;
  //       });
  //     },
  //     child: Container(
  //       margin: const EdgeInsets.only(right: 20),
  //       height: 40,
  //
  //       width: 100,
  //       alignment: Alignment.center,
  //       // padding: const EdgeInsets.only(right: 20,l),
  //       decoration: BoxDecoration(
  //         color: Colors.purple,
  //         borderRadius: BorderRadius.circular(5),
  //       ),
  //       child: Text(
  //         item,
  //         style: const TextStyle(
  //             fontSize: 14,
  //             fontWeight: FontWeight.w600,
  //             color: Colors.white,
  //             letterSpacing: 1),
  //       ),
  //     ),
  //   );
  // }
  // final List<Marker> _markers = [
  //   const Marker(
  //     markerId: MarkerId("0"),
  //     position: LatLng(17.3616, 78.4747),
  //     infoWindow: InfoWindow(title: "My Current Location 1"),
  //   ),
  //   const Marker(
  //     markerId: MarkerId("1"),
  //     position: LatLng(17.3850, 78.4867),
  //     infoWindow: InfoWindow(title: "Hyderabad Location"),
  //   ),
  // ];
  //
  // Future<Position> findCurrentLocation()async{
  //   await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace) {
  //     print("error is : $error");
  //
  //   });
  //   return await Geolocator.getCurrentPosition();
  //
  //
  //
  // }
  //
  //
  //
  // showGoogleMap() {
  //   GoogleMap(
  //     initialCameraPosition: _googleMap,
  //     // markers: Set.of(_markers),
  //   );
  // }
  final CameraPosition _googleMap =
      const CameraPosition(target: LatLng(17.3616, 78.4747), zoom: 14);

  showGoogleMap() {
    GoogleMap(
      initialCameraPosition: _googleMap,
      // markers: Set.of(_markers),
    );
  }

  final List<Marker> _markers = [
    const Marker(
      markerId: MarkerId("0"),
      position: LatLng(17.3616, 78.4747),
      infoWindow: InfoWindow(title: "My Current Location 1"),
    ),
    const Marker(
      markerId: MarkerId("1"),

  position: LatLng(17.3850, 78.4867),
      infoWindow: InfoWindow(title: "Hyderabad Location"),
    ),
  ];
  Widget getData() {
    return Consumer<Model>(
      builder: (_, a, ch) => Container(
        child: wid[a.currentValue],
      ),
    );
  }

  Widget citiesData(var item, int index) {
    // final provider = Provider.of<Model>(context);

    return Consumer<Model>(builder: (_, a, child) {
      return InkWell(
        onTap: () {
          print('$index');
          a.setValue(index);
        },
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          height: 40,
          width: 100,
          alignment: Alignment.center,
          // padding: const EdgeInsets.only(right: 20,l),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            item,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1),
          ),
        ),
      );
    });
  }

  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Consumer<Model>(builder: (_, a, child) {
            return IconButton(
                onPressed: () {
                  a.getCurrentLocation(_markers, _controller);
                },
                icon: Icon(Icons.location_on));
          }),
          title: const Text(
            "Gachibowli",
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < cList.length; i++)
                      citiesData(
                        cList[i],
                        i,
                      )
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.all(16),
              color: Colors.yellow[200],
              child: GoogleMap(
                initialCameraPosition: _googleMap,
                markers: Set.of(_markers),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            getData(),

          ],
        ));
  }


}


// class CityData extends StatefulWidget {
//   CityData({Key? key}) : super(key: key);
//
//   @override
//   State<CityData> createState() => _CityDataState();
// }
//
// class _CityDataState extends State<CityData> {
//   int iValue = 0;
//
//   List<String> cList = [
//     "hyd",
//     "bng",
//     "chn",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: cList.map((e) => citiesData(e)).toList());
//   }
//
//   Widget citiesData(var item) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//
//         });
//       },
//       child: Container(
//         height: 40,
//         width: 100,
//         alignment: Alignment.center,
//         // padding: const EdgeInsets.only(right: 20,l),
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: Text(item),
//       ),
//     );
//   }
// }

/*
*   SizedBox(    // this should not be used until there will be a huge requirement of the tab  mostly try the above metod
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 50),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _currentValue = index;
                      });
                    },
                    child: Container(
                        color: Colors.indigo,

                        padding: const EdgeInsets.only(left: 30),
                        child: Text(cList[index])),
                  );
                },
                itemCount: cList.length,
              ),
            ),*/
