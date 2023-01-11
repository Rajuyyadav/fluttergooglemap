import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap/gooplemap_task_project/googlemaptask_first_screen.dart';

class SecondScreenHyd extends StatefulWidget {
  const SecondScreenHyd({Key? key}) : super(key: key);

  @override
  State<SecondScreenHyd> createState() => _SecondScreenHydState();
}

class _SecondScreenHydState extends State<SecondScreenHyd> {
  List<String> lstImg = [
    "asset/citiesImages/hyderabad.png",
    "asset/citiesImages/delhi.png",
    "asset/citiesImages/bangalore.png",
    "asset/citiesImages/mumbai.png",
    "asset/citiesImages/noida.png",
  ];
  List<String> lstNam = [
    "Hyderabad",
    "Delhi",
    "Bangalore",
    "Mumbai",
    "Noida",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Popular places".toUpperCase(),
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.pink),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: lstNam.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      // tileColor: Colors.red,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(lstImg[index]),
                        radius: 30,
                      ),

                      title: Text(
                        lstNam[index],
                        // ===============  names of city ==============
                        style: const TextStyle(color: Colors.red),
                      ),
                      subtitle: const Text("dsabdcsdbnchsdcn"),
                    ),
                  );
                })

          )
        ]),
      ),
    );
  }
}
