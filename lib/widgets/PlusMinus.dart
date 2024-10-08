// import 'package:flutter/material.dart';

// class PlusMinus extends StatefulWidget {
//   String s;
//   PlusMinus({required this.s});
//   @override
//   State<PlusMinus> createState() => _PlusMinusState(s: s);
// }

// class _PlusMinusState extends State<PlusMinus> {
//   String s;

//   int i = 0;
//   _PlusMinusState({required this.s});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         width: 180,
//         height: 220,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//         child: Column(
//           children: [
//             Text(
//               s,
//               style: TextStyle(
//                   fontSize: 40, color: Color.fromARGB(255, 162, 161, 161)),
//             ),
//             Text(
//               "$i",
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Color.fromARGB(255, 0, 0, 0),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: FloatingActionButton(
//                       elevation: 10,
//                       shape: CircleBorder(),
//                       backgroundColor: Color.fromARGB(255, 32, 120, 124),
//                       onPressed: () {
//                         setState(() {
//                           i--;
//                         });
//                       },
//                       child: Icon(
//                         Icons.remove,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: FloatingActionButton(
//                       elevation: 10,
//                       shape: CircleBorder(),
//                       backgroundColor: Color.fromARGB(255, 32, 120, 124),
//                       onPressed: () {
//                         setState(() {
//                           i++;
//                         });
//                       },
//                       child: Icon(
//                         Icons.add,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
