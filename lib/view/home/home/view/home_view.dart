import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/home/model_food/food_model.dart';

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
                color: Color(0xff4a4b4d),
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
                    children: const [
                      Text(
                        "Delivering to",
                        style: TextStyle(
                            color: Color(0xffb6b7b7),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Metropolis",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Current Location",
                        style: TextStyle(
                            color: Color(0xff7c7d7e),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Metropolis",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
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
                    padding: context.paddingOnlyTopLargeX,
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
                    height: 100,
                    child: ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: FoodLists.foods.length * 5,
                      itemBuilder: ((context, index) {
                        return const SizedBox(
                          width: 50,
                          height: 50,
                          child: Text("data"),
                        );
                      },),
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
