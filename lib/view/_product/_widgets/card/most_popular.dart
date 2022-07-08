import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';

class MostPopularRestaurentCard extends StatelessWidget {
  const MostPopularRestaurentCard({Key? key, required this.restaurant}) : super(key: key);
  final RestaurantModel restaurant;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ImageRestaurent(restaurant: restaurant),
        ),
        Padding(
          padding: context.paddingMediumHorizontal,
          child: InformationRestaurent(restaurant: restaurant),
        )
      ],
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: context.dynamicHeight(0.1662),
        width: context.dynamicWidth(0.608),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(
            restaurant.imagePath,
          ),
        ),
      ),
    );
  }
}

class InformationRestaurent extends StatelessWidget {
  const InformationRestaurent({
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
            Text(" Café  * ${restaurant.region} "),
            const Icon(
              Icons.star,
              color: ColorConstants.brightOrange,
            ),
            Text(
              restaurant.score.toString(),
              style: TextStylesConstants.buttonMediumTextStyle(context: context),
            ),
          ],
        )
      ],
    );
  }
}
