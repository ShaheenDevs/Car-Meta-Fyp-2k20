import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:car_meta/ui/widgets/button/icon_button.dart';
import 'package:flutter/material.dart';

Widget homeCard(double height, int index, ProductModel productData,
    onPresses, AuthModel? userData) {
  bool isSaved = productData.saved?.contains(userData?.uID) ?? false;
  return SizedBox(
    height: height,
    width: height - 50,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height - 70,
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(productData.url ?? ""),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  verticalSpaceTiny,
                  GestureDetector(
                    onTap: () {
                      onPresses(index, isSaved);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: kcVeryLightGrey,
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          isSaved ? saved : save,
                          color: kcPrimaryColor,
                          height: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  MyIconButton(
                    title: "4.5",
                    icon: star,
                    onTap: () {},
                    iconHeight: 12,
                    color: kcVeryLightGrey,
                    realIcon: true,
                    selected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        verticalSpaceTiny,
        Text(
          productData.title ?? "",
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        Row(
          children: [
            Text(
              "\$${productData.price}",
              style: const TextStyle(
                  color: kcPrimaryColorDark, fontWeight: FontWeight.w700),
            ),
            const Text(
              ".00",
              style: TextStyle(color: kcPrimaryColorDark),
            ),
          ],
        ),
      ],
    ),
  );
}
