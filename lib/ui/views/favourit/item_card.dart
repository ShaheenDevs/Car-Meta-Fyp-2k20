import 'package:car_meta/models/product.dart';
import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:car_meta/ui/views/favourit/favourit_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MySavedListItemCard extends ViewModelWidget<FavouritViewModel> {
  final ProductModel product;

  const MySavedListItemCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(
    BuildContext context,
    FavouritViewModel viewModel,
  ) {
    return GestureDetector(
      onTap: () {
        viewModel.navigateToPostDetailsView(product);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(product.url ?? ""),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ],
                      ),
                      horizontalSpaceSmall,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceSmall,
                          Text(
                            product.title ?? "",
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          verticalSpaceTiny,
                          Row(
                            children: [
                              Text(
                                "\$${product.price}",
                                style: const TextStyle(
                                    color: kcPrimaryColorDark,
                                    fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                ".00/day",
                                style: TextStyle(color: kcPrimaryColorDark),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 15,
                child: GestureDetector(
                  onTap: () {
                    viewModel.unSavedProduct(product);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: kcVeryLightGrey,
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        saved,
                        color: kcPrimaryColor,
                        height: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
