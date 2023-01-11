import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ConvertLatlanToAddress extends StatefulWidget {
  const ConvertLatlanToAddress({Key? key}) : super(key: key);

  @override
  State<ConvertLatlanToAddress> createState() => _ConvertLatlanToAddressState();
}

class _ConvertLatlanToAddressState extends State<ConvertLatlanToAddress> {
  String newlocationadd = 'latlng';
  String newplaceadd = 'place';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("google map"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              newlocationadd,
              style: const TextStyle(color: Colors.pink),
            ),
            Text(
              newplaceadd,
              style: const TextStyle(color: Colors.pink),
            ),
            GestureDetector(
              onTap: () async {

                List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");
                List<Placemark> placemarks = await placemarkFromCoordinates(17.3616, 78.4747);

                print("${locations}+++++++++++========");
                print('${placemarks.reversed.last.name.toString()}');
                log("$placemarks");

                setState(() {
                  {   // block of code
                    newlocationadd = "lng ${locations.last.longitude} lat  ${locations.last.latitude}";
                    newplaceadd = placemarks.first.postalCode.toString();
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  height: 50,
                  child: const Center(child: Text("data")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
