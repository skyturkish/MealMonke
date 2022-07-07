import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/_product/_widgets/food/card/region_food.dart';
import 'package:shopping/view/_product/_widgets/restaurent/card/Popular_restaurent_card.dart';
import 'package:shopping/view/_product/_widgets/restaurent/card/most_popular.dart';
import 'package:shopping/view/_product/_widgets/restaurent/listtile/recent_item.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/home/models/food_model.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';
part 'home_view_part.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String userName = Provider.of<UserProvider>(context, listen: false).user.name;
    return MySafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          title: Row(
            children: [
              Text(
                "Good Morning $userName!",
                style: TextStylesConstants.homePageMediumTitle(context: context),
              ),
              const Spacer(),
              const Icon(
                Icons.shopping_cart,
                color: ColorConstants.darkShadow,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: ConstantTexts(searchController: _searchController),
            ),
            Expanded(
              child: ListView(
                children: const [
                  FoodRegions(),
                  PopularRestaurants(),
                  MostPopularRestaurants(),
                  RecentRestaurants(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
