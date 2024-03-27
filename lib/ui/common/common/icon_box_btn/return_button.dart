// ignore_for_file: must_be_immutable

import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../common/app_colors.dart';
import 'icon_box_btn_model.dart';

class ReturnButton extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  // double? imgheight;
  double? imgwidth;
  String? text;
  Color? color;
  Color? boxcolor;
  double? fontSize;
  FontWeight? fontWeight;
  String? imageLeft;
  String? imageRight;
  Function? onPress;
  double? topLeftRadius;
  double? topRightRadius;
  double? btmLeftRadius;
  double? btmRightRadius;
  double? borderWidth;
  ReturnButton(
      {super.key,
      this.color,
      this.boxcolor,
      this.height,
      this.text,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.imageLeft,
      this.imageRight,
      this.imgwidth,
      this.onPress,
      this.topLeftRadius,
      this.topRightRadius,
      this.btmLeftRadius,
      this.btmRightRadius,
      this.borderWidth});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    final _navigationService = locator<NavigationService>();
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        } else {
          _navigationService.back();
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: kcPrimaryColor, width: borderWidth ?? 1.0),
          color: boxcolor ?? Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? 10),
              topRight: Radius.circular(topRightRadius ?? 10),
              bottomLeft: Radius.circular(btmLeftRadius ?? 10),
              bottomRight: Radius.circular(btmRightRadius ?? 10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageLeft != null
                ? Row(
                    children: [
                      Image.asset(
                        imageLeft ?? "",
                        width: imgwidth,
                      ),
                      horizontalSpaceTiny,
                    ],
                  )
                : Container(),
            Text(
              text ?? "",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: color ?? kcPrimaryColor,
                  fontSize: fontSize ?? 14,
                  fontWeight: fontWeight ?? FontWeight.w500),
            ),
            imageRight != null
                ? Row(
                    children: [
                      horizontalSpaceTiny,
                      Image.asset(
                        imageRight ?? "",
                        width: imgwidth,
                      )
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
