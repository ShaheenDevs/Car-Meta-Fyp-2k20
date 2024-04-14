import 'package:car_meta/models/product.dart';
import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:car_meta/ui/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'post_detailsmodel.dart';

class PostDetailsView extends StackedView<PostDetailsViewModel> {
  final ProductModel product;
  const PostDetailsView({Key? key, required this.product}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PostDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.url ?? ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: IconButton(
                      onPressed: viewModel.back,
                      icon: const CircleAvatar(
                        child: Icon(Icons.arrow_back),
                      ),
                    )),
              ],
            ),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title ?? "",
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    product.description ?? "",
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  verticalSpaceTiny,
                  textRow("Category:", product.type ?? ""),
                  textRow("Type:", product.subType ?? ""),
                  textRow("Type:", product.otherType ?? ""),
                  textRow("Model:", product.model ?? ""),
                  textRow("Year:", product.year ?? ""),
                  textRow("Mileage:", product.milage ?? ""),
                  textRow("Phone Number:", product.phoneNo ?? ""),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          Text(
                            "${product.price} PKR",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Button(
                        onTap: () {
                          viewModel.navigateToChatRoomView(product);
                        },
                        width: 160,
                        height: 30,
                        padding: 0,
                        color: kcPrimaryColorDark,
                        title: 'Book Now',
                        borderStatus: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(PostDetailsViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  PostDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostDetailsViewModel();
}

Widget textRow(String title, String value) {
  return value.isNotEmpty
      ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kcDarkGreyColor,
                ),
              ),
            ),
            verticalSpaceSmall,
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: kcDarkGreyColor,
              ),
            ),
          ],
        )
      : const SizedBox.shrink();
}
