// ignore_for_file: must_be_immutable

import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import 'icon_box_btn_model.dart';

class SubmitButton extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  double? leftImgwidth;
  double? rightImgwidth;
  String? text;
  Color? color;
  bool start;
  double? fontSize;
  FontWeight? fontWeight;
  String? leftImage;
  String? rightImage;
  Color? boxColor;
  Function? onPress;
  double? scale;
  Color? iconColor;
  SubmitButton(
      {super.key,
      this.color,
      this.height,
      this.text,
      this.width,
      this.start = false,
      this.fontSize,
      this.fontWeight,
      this.rightImage,
      this.rightImgwidth,
      this.leftImage,
      this.leftImgwidth,
      this.boxColor,
      this.onPress,
      this.scale,
      this.iconColor});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    // final navigationService = locator<NavigationService>();
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Column(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: boxColor ?? Colors.blue,
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: iconRareColor, width: 1)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Row(
                mainAxisAlignment: start
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leftImage != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                leftImage ?? "",
                                color: iconColor ?? Colors.white,
                                // color: Colors.white,
                                width: leftImgwidth,
                                // scale: scale??1,
                              ),
                            )
                          ],
                        )
                      : Container(),
                  if (start) horizontalSpaceSmall,
                  Text(
                    text ?? "",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: color ?? Colors.white,
                        fontSize: fontSize ?? 15,
                        fontWeight: fontWeight ?? FontWeight.w600),
                  ),
                  rightImage != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            verticalSpaceTiny,
                            Image.asset(
                              rightImage ?? "",
                              width: rightImgwidth,
                            )
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
