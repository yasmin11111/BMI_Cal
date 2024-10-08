import 'package:bmi_app/screens/splash.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashscreen(),
      ),
    );
  }
}
