import 'package:flutter/material.dart';

TextField reusableTextFeild(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Widget signInSignUpButton(BuildContext context, bool isLogin) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.7,
    height: 50,
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: Text(
      isLogin ? 'LOG IN' : 'SIGN UP',
      style: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}

TextField searchTextFeild(
    String text, IconData icon, Function(String) onChanged) {
  return TextField(
    onChanged: onChanged,
    enableSuggestions: true,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      suffixIcon: Icon(
        icon,
        color: Colors.black87,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
      filled: true,
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              width: 10, style: BorderStyle.none, color: Colors.black)),
    ),
  );
}
