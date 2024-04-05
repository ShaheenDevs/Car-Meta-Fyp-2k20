import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'button_model.dart';

class SeeMoreButton extends StackedView<ButtonModel> {
  final VoidCallback onTap;

  const SeeMoreButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget builder(
    BuildContext context,
    ButtonModel viewModel,
    Widget? child,
  ) {
    return InkWell(
      onTap: onTap,
      child: const Row(
        children: [
          Text(
            "See More",
            style: TextStyle(
              color: kcPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          horizontalSpaceTiny,
          Icon(
            Icons.arrow_forward,
            color: kcPrimaryColor,
            size: 20,
          )
        ],
      ),
    );
  }

  @override
  ButtonModel viewModelBuilder(BuildContext context) => ButtonModel();
}
