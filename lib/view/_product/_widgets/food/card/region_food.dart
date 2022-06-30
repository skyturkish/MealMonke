import 'package:flutter/material.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/home/models/food_model.dart';

class FoodRegionCard extends StatelessWidget {
  const FoodRegionCard({Key? key, required this.food}) : super(key: key);
  final FoodModel food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingOnlyLeftSmallX,
      child: Column(
        children: [
          Expanded(
            child: ImageFood(food: food),
          ),
          RegionFood(food: food),
        ],
      ),
    );
  }
}

class ImageFood extends StatelessWidget {
  const ImageFood({
    Key? key,
    required this.food,
  }) : super(key: key);

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: context.dynamicHeight(0.118483),
        width: context.dynamicWidth(0.24330),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(
            food.imagePath,
          ),
        ),
      ),
    );
  }
}

class RegionFood extends StatelessWidget {
  const RegionFood({
    Key? key,
    required this.food,
  }) : super(key: key);

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Text(
      food.region,
      style: TextStylesConstants.foodRegionTextStyle(context: context),
    );
  }
}
