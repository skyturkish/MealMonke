import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';

class RecentRestaurentListItem extends StatelessWidget {
  const RecentRestaurentListItem({Key? key, required this.restaurant}) : super(key: key);
  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ImageRestaurent(restaurant: restaurant),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
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
        width: context.dynamicWidth(0.2),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(restaurant.imagePath),
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
    return SizedBox(
      width: context.dynamicWidth(0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name,
            style: TextStylesConstants.recentItemTextStyle(context: context),
          ),
          Text(
            'Café * ${restaurant.region}',
            style: TextStylesConstants.recentItemTextStyleMini(context: context),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: ColorConstants.brightOrange,
              ),
              Text(
                "ratings",
                style: TextStylesConstants.recentItemTextStyleMini(context: context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
