part of "home_view.dart";

class ConstantTexts extends StatelessWidget {
  const ConstantTexts({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class FoodRegions extends StatelessWidget {
  const FoodRegions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.14234),
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
    );
  }
}

class PopularRestaurants extends StatelessWidget {
  const PopularRestaurants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: context.paddingMediumHorizontal + context.paddingOnlyTopLarge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Restaurents", style: TextStylesConstants.homePageMediumTitle(context: context)),
              Text("View all", style: TextStylesConstants.clickOrangeTextStyle(context: context))
            ],
          ),
        ),
        Column(
          children: RestaurantLists.restaurants
              .map((restaurant) => SizedBox(
                    height: context.dynamicHeight(0.5),
                    child: PopularRestaurantCard(restaurant: restaurant),
                  ))
              .toList(),
        )
      ],
    );
  }
}

class MostPopularRestaurants extends StatelessWidget {
  const MostPopularRestaurants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            height: context.dynamicHeight(0.18979),
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
      ],
    );
  }
}

class RecentRestaurants extends StatelessWidget {
  const RecentRestaurants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
