import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'textform_field_model.dart';

class DropdownableTextField extends StackedView<TextformFieldModel> {
  final String title;
  final List<String> items; // List of items for the dropdown
  final String? selectedValue; // Currently selected value
  final void Function(String?) onChanged; // Callback for when the value changes
  const DropdownableTextField({
    super.key,
    required this.title,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget builder(
    BuildContext context,
    TextformFieldModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: 47,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            ),
          );
        }).toList(),
        dropdownColor: Colors.grey.shade100,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.red,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          border: InputBorder.none,
          alignLabelWithHint: true,
        ),
        style: const TextStyle(
            fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  TextformFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextformFieldModel();
}
