import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:shopping/view/home/models/food_model.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.red,
            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.light, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
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
                color: ColorConstants.shoppingCartBlack,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Delivering to",
                        style: TextStylesConstants.textFieldTextStyle(context: context),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Current Location",
                        style: TextStylesConstants.sideTextStyle(context: context),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: ColorConstants.brightOrange,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: CustomTextField(
                      controller: _searchController,
                      keyboardType: TextInputType.name,
                      hintText: 'Search food',
                      label: const Icon(Icons.search),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 120,
                    child: Padding(
                      padding: context.paddingMediumHorizontal + context.paddingOnlyTopSmall,
                      child: ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: FoodLists.foods.length,
                        itemBuilder: ((context, index) {
                          return FoodRegionCard(food: FoodLists.foods[index]);
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.paddingMediumHorizontal + context.paddingOnlyTopLarge,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Restaurents", style: TextStylesConstants.titleMediumTextStyle(context: context)),
                        Text("View all", style: TextStylesConstants.clickOrangeTextStyle(context: context))
                      ],
                    ),
                  ),
                  for (var index = 0; index < 3; index++)
                    SizedBox(
                      height: context.dynamicHeight(0.5),
                      child: PopularRestaurantCard(restaurant: RestaurantLists.restaurants[index]),
                    ),
                  Padding(
                    padding: context.paddingOnlyTopLarge + context.paddingMediumHorizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Most Popular", style: TextStylesConstants.homePageMediumTitle(context: context)),
                            Text("View all", style: TextStylesConstants.clickOrangeTextStyle(context: context))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          return MostPopularRestaurentCard(restaurant: RestaurantLists.restaurants[index]);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopLarge + context.paddingMediumHorizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: TextStylesConstants.homePageLargeTitle(context: context),
                        ),
                        Text("View all", style: TextStylesConstants.clickOrangeTextStyle(context: context))
                      ],
                    ),
                  ),
                  for (var index = 0; index < 3; index++)
                    Padding(
                      padding: context.paddingMediumHorizontal + context.paddingOnlyTopMedium,
                      child: SizedBox(
                        height: context.dynamicHeight(0.09236),
                        child: RecentRestaurentListItem(restaurant: RestaurantLists.restaurants[index]),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
