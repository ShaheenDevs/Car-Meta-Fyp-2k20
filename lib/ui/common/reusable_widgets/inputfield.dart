import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customInputField({
  required double width,
  required double height,
  Icon? prefixIcon,
  required String hintText,
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  GestureDetector? suffixIcon,
}) {
  return Container(
    width: width * 0.8,
    height: height * 0.05,
    padding: EdgeInsets.symmetric(horizontal: 7),
    decoration: BoxDecoration(
    ),
    child: TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    ),
  );
}