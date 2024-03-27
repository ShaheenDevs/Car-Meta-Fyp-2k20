// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import 'dropdown_textfield_model.dart';

class DropdownTextfield extends StackedView<DropdownTextfieldModel> {
  final String hintText;
  Color? hintTextColor;
  final List<String> options;
  String? value;
  String? titleText;
  double? height;
  double? margin;
  void Function(String?) onChanged;
  Function? onTap;
  DropdownTextfield({
    super.key,
    this.hintTextColor = Colors.blueGrey,
    this.hintText = '',
    required this.options,
    this.height,
    this.margin,
    this.value,
    this.titleText = "",
    required this.onChanged,
    this.onTap,
  });

  @override
  Widget builder(
    BuildContext context,
    DropdownTextfieldModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText != ""
            ? Column(
                children: [
                  Text(
                    titleText.toString(),
                    style: TextStyle(
          // color: color ?? Colors.black,
        fontSize:  14,
        // fontWeight: fontWeight ?? FontWeight.w400,
        // letterSpacing: letterSpacing ?? 0,
        // wordSpacing: wordspacing ?? 0,
      ),
                    // style: GoogleFonts.poppins(fontSize: 14),
                  ),
                  verticalSpaceTiny,
                ],
              )
            : Container(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          width: double.infinity,
          height: height ?? 40,
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0),
                    hintText: hintText,
                    border: _setBorderStyle(),
                    enabledBorder: _setBorderStyle(),
                    focusedBorder: _setBorderStyle(),
                    disabledBorder: _setBorderStyle(),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontFamily: 'poppins',
                    )),
                isEmpty: value == null || value == '',
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconEnabledColor: Colors.blueGrey,
                    iconDisabledColor: Colors.blueGrey,
                    iconSize: 30,
                    icon: const Icon(Icons.expand_more),
                    value: value,
                    onTap: () {
                      if (onTap != null) {
                        onTap!();
                      }
                    },
                    isDense: true,
                    onChanged: onChanged,
                    items: options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                            width: width - 150,
                            child: Text(
                              value.toString(),
                              overflow: TextOverflow.ellipsis,
                            )),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  DropdownTextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      DropdownTextfieldModel();
  _setBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        5.00,
      ),
      borderSide: const BorderSide(color: Colors.black, width: 1.0),
    );
  }
}
