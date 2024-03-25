import 'package:flutter/material.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({
    super.key,
    required this.imagePath,
    required this.title,
    required this.colr,
  });
  final String imagePath;
  final String title;
  final Color colr;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      width: 100,
      decoration:
          BoxDecoration(color: colr, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            height: 60,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

