// import 'package:flutter/material.dart';
// import 'package:vertical_slider/vertical_slider.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

// class slider extends StatefulWidget {
  
//   const slider({super.key});

//   @override
//   State<slider> createState() => _sliderState();
// }

// class _sliderState extends State<slider> {
//   double h = 120;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//         height: 460,
//         width: 180,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(children: [
//             Text(
//               "Height",
//               style: TextStyle(
//                   fontSize: 40, color: Color.fromARGB(255, 162, 161, 161)),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               textBaseline: TextBaseline.alphabetic,
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               children: [
//                 Text(
//                   "$h",
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "cm",
//                   style: TextStyle(
//                       fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
//                 )
//               ],
//             ),
//             Container(
//                 height: 330,
//                 child: SfSlider.vertical(
//                   stepSize: 5,
//                   min: 0.0,
//                   max: 200.0,
//                   value: h,
//                   interval: 20,
//                   showTicks: true,
//                   showLabels: true,
//                   //enableTooltip: true,
//                   minorTicksPerInterval: 1,
//                   activeColor: Color.fromARGB(255, 32, 120, 124),
//                   onChanged: (value) {
//                     setState(() {
//                       h = value.roundToDouble();
//                     });
//                   },
//                 ))
//           ]),
//         ),
//       ),
//     );
//   }
// }
// // VerticalSlider(
// //                   value: 1,
// //                   onChanged: (value) {},
// //                   max: 290,
// //                   autofocus: true,
// //                   inactiveColor: const Color.fromARGB(255, 179, 177, 177),
// //                   activeColor: Color.fromARGB(255, 32, 120, 124),
// //                 ),
// //               ),