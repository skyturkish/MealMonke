import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/appbar/custom_appbar.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/view/_product/_widgets/card/Popular_restaurent_card.dart';
import 'package:shopping/view/home/models/restaurant_model.dart';

class OffersView extends StatefulWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: CustomAppBar(
                leading: Text(
                  LocaleKeys.latestOffers.tr(),
                  style: TextStylesConstants.titleLargeTextStyle(context: context),
                ),
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: context.paddingOnlyTopMedium + context.paddingMediumHorizontal,
                    child: Text(
                      LocaleKeys.findDiscounts.tr(),
                      style: TextStylesConstants.textFieldTextStyle(context: context),
                    ),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopLargeX + context.paddingMediumHorizontal,
                    child: CustomElevatedButton(
                        height: 0.0357,
                        width: 0.4186,
                        onPressed: () {},
                        primary: ColorConstants.brightOrange,
                        child: const Text("Check Offers",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Metropolis",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.0),
                            textAlign: TextAlign.center)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: RestaurantLists.restaurants
                      .map((restaurant) => SizedBox(
                            height: context.dynamicHeight(0.5),
                            child: PopularRestaurantCard(restaurant: restaurant),
                          ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
