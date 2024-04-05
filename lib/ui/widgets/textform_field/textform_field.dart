import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'textform_field_model.dart';

class TextformField extends StackedView<TextformFieldModel> {
  final String title;
  final TextEditingController? ctrl;
  final Widget? postIcon;
  final bool? obscureText;
  final TextInputType? textInputType;
  final Function(String)? onChanged; // Define callback function here
  const TextformField({
    super.key,
    required this.title,
    this.ctrl,
    this.postIcon,
    this.obscureText,
    this.textInputType,
    this.onChanged, // Accept callback function as a parameter
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
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: TextFormField(
        controller: ctrl,
        keyboardType: textInputType,
        obscureText: obscureText ?? false,
        onChanged: onChanged, // Pass the callback function here
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w600),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          border: InputBorder.none,
          alignLabelWithHint: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: postIcon,
          ),
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
