import 'package:flutter/cupertino.dart';

class SecondScreenBng extends StatefulWidget {
  const SecondScreenBng({Key? key}) : super(key: key);

  @override
  State<SecondScreenBng> createState() => _SecondScreenHydState();
}

class _SecondScreenHydState extends State<SecondScreenBng> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text("data SecondScreenBng"),
    ]);
  }
}
