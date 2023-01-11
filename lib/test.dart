import 'package:flutter/material.dart';
import 'package:googlemap/gooplemap_task_project/secondscreen_chn.dart';
import 'package:googlemap/gooplemap_task_project/secondscreen_hyd.dart';
import 'package:googlemap/gooplemap_task_project/secondscreenbng.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Categories cat = Categories();

  List<String> list = ["hyd", "bng", "chn"];
  int _currentIndex = 0;

  int getTab(int _currentIndex) {
    switch (_currentIndex) {
      case 0:
        const SecondScreenHyd();
        break;
      case 1:
        SecondScreenBng();
        break;
      case 2:
        SecondScreenChn();
        break;
    }
    return _currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("datauiknn"),
        // Categories(),
        SizedBox(
          height: 80,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    _currentIndex = index;
                  },
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      list[index],
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                );
              }),
        ),

        TextButton(onPressed: (){
          setState(() {

          });
          getTab(_currentIndex);

        }, child: Text("show Data")),
        Container(
          child: SecondScreenHyd(),
        ),



        Text("datauiknn"),
      ],
    ));
  }
}

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  List<String> list = ["hyd", "bng", "chn"];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {
                _currentIndex = index;
              },
              child: Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  list[index],
                  style: TextStyle(color: Colors.red),
                ),
              ),
            );
          }),
    );
  }
}
