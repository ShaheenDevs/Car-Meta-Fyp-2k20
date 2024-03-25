import 'package:flutter/material.dart';

class LogoCards extends StatelessWidget {
  const LogoCards({
    super.key,
    required this.imagePath,
    required this.colr,
  });
  final String imagePath;
  final Color colr;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
      
      width: 55,
      decoration:
          BoxDecoration(color: colr, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            height: 40,
          ),
          
        ],
      ),
    );
  }
}