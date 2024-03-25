// import 'package:carmeta/screens/addcar.dart';
// import 'package:carmeta/screens/favourites.dart';
// import 'package:carmeta/screens/homepage.dart';
// import 'package:carmeta/screens/settings.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// // class taskbar extends StatelessWidget {
// //   const taskbar({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //         width: MediaQuery.of(context).size.width,
// //         height: 50,
// //         color: const Color.fromARGB(255, 199, 198, 198),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: <Widget>[
// //             IconButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                           builder: (context) => const MyHomePage()));
// //                 },
// //                 icon: const Icon(Icons.home_outlined)),
// //             IconButton(
// //                 onPressed: () {}, icon: const Icon(Icons.message_outlined)),
// //             IconButton(
// //                 onPressed: () {
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: (context) => const AddCar()));
// //                 },
// //                 iconSize: 40.0,
// //                 icon: const Icon(Icons.add_circle_outlined)),
// //             IconButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                           builder: (context) => const MyFavourites()));
// //                 },
// //                 icon: const Icon(Icons.star_border_outlined)),
// //             IconButton(
// //                 onPressed: () {
// //                    Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                           builder: (context) => const MySettings()));
// //                 }, icon: const Icon(Icons.settings)),
// //           ],
// //         ));
// //   }
// // }

// class taskbar extends StatefulWidget {
//   const taskbar({super.key, required this.title});

//   final String title;

//   @override
//   State<taskbar> createState() => _taskbarState();
// }

// class _taskbarState extends State<taskbar> {
//   int _counter = 0;
//   int index = 2;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final items = <Widget>[
//       const Icon(
//         Icons.home,
//         size: 30,
//       ),
//       const Icon(
//         Icons.chat_outlined,
//         size: 30,
//       ),
//       const Icon(
//         Icons.add_circle_outlined,
//         size: 30,
//       ),
//       const Icon(
//         Icons.star_border,
//         size: 30,
//       ),
//       const Icon(
//         Icons.settings,
//         size: 30,
//       ),
//     ];

//     return Container(
//       height: 50,
//       child: Scaffold(
//         extendBody: true,
//         //backgroundColor: Colors.green,
//         appBar: AppBar(
//             //backgroundColor: Colors.purple,
//             ),
//         body: const Center(),
//         bottomNavigationBar: CurvedNavigationBar(
//           //color: Colors.black,
//           //buttonBackgroundColor: Colors.amber,
//          // backgroundColor: Colors.black,
//           height: 50,
//           index: index,
//           items: items,
//           onTap: (index) => setState(() => this.index = index),
//         ),
//       ),
//     );
//   }
// }
