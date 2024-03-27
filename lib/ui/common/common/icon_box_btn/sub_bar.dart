// ignore_for_file: must_be_immutable

import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import 'icon_box_btn_model.dart';

class SubBar extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  double? topimgwidth;
  double? imgwidth;
  String? text;
  Color? color;
  Color? boxColor;
  double? fontSize;
  FontWeight? fontWeight;
  String? image;
  String? topimage;
  bool divider;
  double? topLeftRadius;
  double? topRightRadius;
  double? btmLeftRadius;
  double? btmRightRadius;
  double? scale;
  Function? onPress;
  bool close;

  SubBar(
      {super.key,
      this.color,
      this.boxColor,
      this.height,
      this.text,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.image,
      this.imgwidth,
      this.topLeftRadius,
      this.topRightRadius,
      this.btmLeftRadius,
      this.btmRightRadius,
      this.topimage,
      this.topimgwidth,
      this.divider = false,
      this.scale,
      this.onPress,
      this.close = false});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (onPress != null) {
              onPress!();
            } else {
              // _navigationService.back();
            }
          },
          child: Container(
            height: height ?? 50,
            width: width ?? MediaQuery.of(context).size.width * 1 - 10,
            decoration: BoxDecoration(
              color: boxColor ?? kcPrimaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius ?? 10),
                  topRight: Radius.circular(topRightRadius ?? 10),
                  bottomLeft: Radius.circular(btmLeftRadius ?? 10),
                  bottomRight: Radius.circular(btmRightRadius ?? 10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    image != null
                        ? Row(
                            children: [
                              verticalSpaceSmall,
                              Image.asset(
                                image ?? "",
                                width: imgwidth ?? 25,
                                scale: scale,
                              )
                            ],
                          )
                        : Container(),
                    horizontalSpaceTiny,
                    Text(
                      text ?? "",
                      style: TextStyle(
                          color: color ?? Colors.white,
                          fontSize: fontSize ?? 15,
                          fontWeight: fontWeight ?? FontWeight.w500),
                    ),
                  ],
                ),
                close
                    ? Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "myIcons.cancel",
                            width: 17,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
        divider
            ? const Divider(
                color: kcPrimaryColor,
                height: 0,
                thickness: 3,
              )
            : Container(),
      ],
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
