import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'button_model.dart';

class MyIconButton extends StackedView<ButtonModel> {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final bool selected;
  final Color? color;
  final bool? realIcon;
  final double? iconHeight;
  const MyIconButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.selected,
    this.realIcon,
    this.color,
    this.iconHeight,
  });

  @override
  Widget builder(
    BuildContext context,
    ButtonModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color ??
                (selected ? kcPrimaryColorDark : kcLightGrey.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Image.asset(
                  width: iconHeight ?? 20,
                  icon,
                  color: realIcon == true
                      ? null
                      : selected
                          ? Colors.white
                          : kcMediumGrey),
              horizontalSpaceSmall,
              Text(
                title,
                style: TextStyle(color: selected ? Colors.white : kcMediumGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ButtonModel viewModelBuilder(BuildContext context) => ButtonModel();
}
