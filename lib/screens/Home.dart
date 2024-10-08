// ignore: file_names
import 'dart:math';

import 'package:bmi_app/screens/result.dart';
import 'package:bmi_app/widgets/GenderWidget.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double h = 120;
  int iweight = 0;

  int iage = 0;
  late double Res = (iweight / pow((h / 100), 2).roundToDouble()) / 100;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 236, 239),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 120, 124),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GenderWidget(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 460,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 162, 161, 161)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            "$h",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          )
                        ],
                      ),
                      Container(
                          height: 330,
                          child: SfSlider.vertical(
                            stepSize: 5,
                            min: 0.0,
                            max: 200.0,
                            value: h,
                            interval: 20,
                            showTicks: true,
                            showLabels: true,
                            //enableTooltip: true,
                            minorTicksPerInterval: 1,
                            activeColor: Color.fromARGB(255, 32, 120, 124),
                            onChanged: (value) {
                              setState(() {
                                h = value.roundToDouble();
                              });
                            },
                          ))
                    ]),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color.fromARGB(255, 162, 161, 161)),
                            ),
                            Text(
                              "$iage",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      elevation: 10,
                                      shape: CircleBorder(),
                                      backgroundColor:
                                          Color.fromARGB(255, 32, 120, 124),
                                      onPressed: () {
                                        setState(() {
                                          iage--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      elevation: 10,
                                      shape: CircleBorder(),
                                      backgroundColor:
                                          Color.fromARGB(255, 32, 120, 124),
                                      onPressed: () {
                                        setState(() {
                                          iage += 5;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color.fromARGB(255, 162, 161, 161)),
                            ),
                            Text(
                              "$iweight",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      elevation: 10,
                                      shape: CircleBorder(),
                                      backgroundColor:
                                          Color.fromARGB(255, 32, 120, 124),
                                      onPressed: () {
                                        setState(() {
                                          iweight--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      elevation: 10,
                                      shape: CircleBorder(),
                                      backgroundColor:
                                          Color.fromARGB(255, 32, 120, 124),
                                      onPressed: () {
                                        setState(() {
                                          iweight += 5;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 60,
            width: 370,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 32, 120, 124))),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Result(
                      h: h,
                      w: iweight,
                      age: iage,
                    );
                  },
                ));
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
