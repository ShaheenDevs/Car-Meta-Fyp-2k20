// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'icon_box_btn/icon_box_btn_model.dart';

class CustomText extends StackedView<IconBoxBtnModel> {
  String text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  double? letterSpacing;
  double? wordspacing;
  TextAlign? textAlign;
  TextDirection? textDirection;
  TextOverflow? textOverflow;
  int? maxLines;
  CustomText(
      {super.key,
      this.text = "",
      this.color,
      this.fontSize,
      this.fontWeight,
      this.letterSpacing,
      this.wordspacing,
      this.textAlign,
      this.textDirection,
      this.textOverflow,
      this.maxLines});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordspacing ?? 0,
      ),
      // style: GoogleFonts.poppins(
      //   color: color ?? Colors.black,
      //   fontSize: fontSize ?? 14,
      //   fontWeight: fontWeight ?? FontWeight.w400,
      //   letterSpacing: letterSpacing ?? 0,
      //   wordSpacing: wordspacing ?? 0,
      // ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
