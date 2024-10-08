// ignore_for_file: camel_case_types

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_app/screens/Home.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                child: AnimatedSplashScreen(
                  splash: "assets/bmi.gif",
                  splashIconSize: 2000,
                  centered: true,
                  duration: 3100,
                  nextScreen: Home(),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Developed By Yasmin Aslaman",
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 173, 166, 166)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
