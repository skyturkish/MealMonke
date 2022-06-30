// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';

class PopularRestaurantCard extends StatelessWidget {
  const PopularRestaurantCard({Key? key, required this.restaurant}) : super(key: key);
  final RestaurantModel restaurant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingOnlyTopMedium,
      child: Column(
        children: [
          Expanded(
            child: ImageRestaurent(restaurant: restaurant),
          ),
          Padding(
            padding: context.paddingMediumHorizontal + context.paddingOnlyTopSmall,
            child: InformationRestaurant(restaurant: restaurant),
          )
        ],
      ),
    );
  }
}

class ImageRestaurent extends StatelessWidget {
  const ImageRestaurent({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(1),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.network(restaurant.imagePath),
      ),
    );
  }
}

class InformationRestaurant extends StatelessWidget {
  const InformationRestaurant({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              restaurant.name,
              style: TextStylesConstants.homePageMediumTitle(context: context),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.star,
              color: ColorConstants.brightOrange,
            ),
            Text(
              restaurant.score.toString(),
              style: TextStylesConstants.buttonMediumTextStyle(context: context),
            ),
            Text("( ${restaurant.ratings} Café ) * ${restaurant.region}")
          ],
        )
      ],
    );
  }
}
