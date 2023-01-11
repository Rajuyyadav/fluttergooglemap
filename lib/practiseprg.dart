import 'package:flutter/material.dart';

class Democlass extends StatelessWidget {
  const Democlass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(

        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text("data"),
          ),

        ],
      ),
    );
  }
}
