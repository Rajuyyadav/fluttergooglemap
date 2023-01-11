import 'package:flutter/material.dart';

class GoogleSearchPlacesApi extends StatefulWidget {
  const GoogleSearchPlacesApi({Key? key}) : super(key: key);

  @override
  State<GoogleSearchPlacesApi> createState() => _GoogleSearchPlacesApiState();
}

class _GoogleSearchPlacesApiState extends State<GoogleSearchPlacesApi> {
   final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        children: [

          TextFormField(controller: _controller),

        ],
      ),),

    );
  }
}
