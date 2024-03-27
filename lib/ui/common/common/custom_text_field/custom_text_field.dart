// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

// import 'package:easy_localization/easy_localization.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:stacked/stacked.dart';
import 'custom_text_field_model.dart';

class CustomTextField extends StackedView<CustomTextFieldModel> {
  TextAlign? textAlign;
  List<TextInputFormatter>? inputFormaters;
  void Function(String)? onChanged;

  // WidgetShape? shape;

  // WidgetPadding? padding;

  // WidgetVariant? variant;

  // WidgetFontStyle? fontStyle;

  Alignment? alignment;
  double radius;

  double? width;

  double? height;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  bool number = true;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  String? titleText;

  String? validationText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;
  var initialValue;

  InputBorder? border;
  InputBorder? enabledBorder;
  InputBorder? focusedBorder;
  InputBorder? disabledBorder;
  InputBorder? errorBorder;
  //this.focusedErrorBorder,
  //this.disabledBorder,
  //this.enabledBorder,

  GestureTapCallback? onTap;

  TextStyle? hintStyle;
  CustomTextField({
    super.key,
    //   this.shape,
    // this.padding,
    // this.variant,
    // this.fontStyle,
    this.radius = 8,
    this.alignment,
    this.width,
    this.height,
    this.margin,
    this.controller,
    this.focusNode,
    this.number = true,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.titleText,
    this.validationText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.disabledBorder,
    this.hintStyle,
    this.inputFormaters,
    this.initialValue,
    this.textAlign,
    this.onChanged,
  });

  @override
  // void onViewModelReady(CustomTextFieldModel viewModel) {
  //      addCommasIndian();
  //   super.onViewModelReady(viewModel);
  // }
  Widget builder(
    BuildContext context,
    CustomTextFieldModel viewModel,
    Widget? child,
  ) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  @override
  CustomTextFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomTextFieldModel();
  _buildTextFormFieldWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText != null
            ? Text(
                titleText.toString(),
                style: TextStyle(
          // color: color ?? Colors.black,
        fontSize:  14,
        fontWeight: FontWeight.w400,
       
      ),
                // style: GoogleFonts.poppins(
                //     fontSize: 14, fontWeight: FontWeight.w500),
              )
            : Container(),
        verticalSpaceTiny,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          width: width ?? double.infinity,
          margin: margin,
          child: TextFormField(
            onChanged: onChanged,
            onTap: onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            focusNode: focusNode,
            style: _setFontStyle(),
            obscureText: isObscureText!,
            textAlign: textAlign ?? TextAlign.start,
            textInputAction: textInputAction,
            // keyboardType: number ? TextInputType.number : TextInputType.text,
            maxLines: maxLines ?? 1,
            decoration: _buildDecoration(),
            initialValue: initialValue,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return validationText ?? 'validation';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? _setFontStyle(),
      border: border ?? _setBorderStyle(),
      enabledBorder: enabledBorder ?? _setBorderStyle(),
      focusedBorder: focusedBorder ?? _setBorderStyle(),
      disabledBorder: disabledBorder ?? _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      // fillColor: _setFillColor(),
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    return const TextStyle(
      // color: Colo,
      fontSize: 16,
      fontFamily: 'poppins',
    );
  }

  // ignore: unused_element
  _setOutlineBorderRadius() {
    return BorderRadius.circular(
      15.00,
    );
  }

  _setBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        radius,
      ),
      borderSide: const BorderSide(color: Colors.blue, width: 1.0),
    );
  }

  _setFillColor() {
    // return const Color(0xFFE5E7EB);
  }

  _setPadding() {
    return const EdgeInsets.symmetric(horizontal: 10, vertical: 12.5);
  }
}
