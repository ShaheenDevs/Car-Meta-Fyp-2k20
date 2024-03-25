import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input_Field extends StatefulWidget {
  const Input_Field({super.key});

  @override
  State<Input_Field> createState() => _InputFieldState();
}

class _InputFieldState extends State<Input_Field> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.text, // Specify numeric keyboard
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          
        ),
        isDense: true,
      ),
      
      onChanged: (value) {
        // Handle the input value (it will be a String)
        print(value);
      },
      
    );
  }
}