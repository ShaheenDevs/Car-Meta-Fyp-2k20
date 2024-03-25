import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController _controller = TextEditingController();
//    String? _validatePrice(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Please enter a price.';
//   }

//   int? price = int.tryParse(value);
//   if (price == null || price < 50000) {
//     return 'Price must be at least 50000.';
//   }

//   return null; // Validation passed
// }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number, // Specify numeric keyboard
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly // Allow only digits
      ],
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        isDense: true,
      ),

      onChanged: (value) {
        // Handle the input value (it will be a String)
        print(value);
      },
    );
  }
}
