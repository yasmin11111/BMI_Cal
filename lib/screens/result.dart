// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations

import 'dart:math';

import 'package:bmi_app/models/sataus.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Result extends StatefulWidget {
  double h;
  int w, age;

  Result({
    required this.w,
    required this.age,
    required this.h,
  });

  @override
  State<Result> createState() => _ResultState(h: h, w: w, age: age);
}

class _ResultState extends State<Result> {
  double h;
  int w, age;

  late double res = w / pow((h / 100), 2).roundToDouble();

  _ResultState({
    required this.w,
    required this.age,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 32, 120, 124),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30)),
        title: Text("Result",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 32, 120, 124))),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularPercentIndicator(
              backgroundColor: Color.fromARGB(255, 141, 145, 146),
              radius: 120.0,
              lineWidth: 20.0,
              progressColor: Color.fromARGB(255, 32, 120, 124),
              animation: true,
              percent: res / 100,
              center: Text(
                " ${res.roundToDouble()} %",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Color.fromARGB(255, 32, 120, 124)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
                border: TableBorder
                    .all(), // Allows to add a border decoration around your table
                children: [
                  TableRow(children: [
                    Center(
                        child: Text('weight',
                            style: TextStyle(
                                color: Color.fromARGB(255, 27, 91, 94),
                                fontSize: 25,
                                fontWeight: FontWeight.bold))),
                    Center(
                        child: Text('Age',
                            style: TextStyle(
                                color: Color.fromARGB(255, 27, 91, 94),
                                fontSize: 25,
                                fontWeight: FontWeight.bold))),
                    Center(
                        child: Text('Hieght',
                            style: TextStyle(
                                color: Color.fromARGB(255, 27, 91, 94),
                                fontSize: 25,
                                fontWeight: FontWeight.bold))),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      '$w',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 27, 91, 94),
                          fontWeight: FontWeight.bold),
                    )),
                    Center(
                        child: Text(
                      '$age',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 27, 91, 94),
                          fontWeight: FontWeight.bold),
                    )),
                    Center(
                        child: Text(
                      '$h',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 27, 91, 94),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                ]),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "${status().statisfun(Res:res)}",
            style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 32, 120, 124),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 370,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 32, 120, 124))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Re Calculate",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Icon(
                    Icons.refresh,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
