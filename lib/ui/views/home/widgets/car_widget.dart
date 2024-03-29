import 'package:flutter/material.dart';

class car_widget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String brand;
  final String price;
  final int index;
  const car_widget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.brand,
    required this.price,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 248, 246),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.star_border_outlined),
          //   alignment: Alignment.topLeft,
          // ),
          Expanded(
              child: Image.asset(
            'assets/$imagePath',
          )),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
          Text(
            'Price : $price pkr',
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}