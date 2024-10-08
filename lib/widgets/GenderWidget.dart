// ignore_for_file: must_be_immutable, unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GenderWidget extends StatefulWidget {
  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMale = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: isMale
                      ? Color.fromARGB(255, 32, 120, 124)
                      : Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 60,
                        color: isMale
                            ? Colors.white
                            : Color.fromARGB(255, 32, 120, 124),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 30,
                          color: isMale
                              ? Colors.white
                              : Color.fromARGB(255, 32, 120, 124),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMale = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: isMale
                      ? Color.fromARGB(255, 255, 255, 255)
                      : Color.fromARGB(255, 32, 120, 124),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,
                          size: 60,
                          color: isMale
                              ? Color.fromARGB(255, 32, 120, 124)
                              : Colors.white),
                      Text(
                        "female",
                        style: TextStyle(
                            fontSize: 30,
                            color: isMale
                                ? Color.fromARGB(255, 32, 120, 124)
                                : Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
