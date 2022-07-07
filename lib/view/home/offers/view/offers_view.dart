import 'package:flutter/material.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/product/widget/appbar/custom_appbar.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';

class OffersView extends StatefulWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  @override
  Widget build(BuildContext context) {
    return MySafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: CustomAppBar(
                leading: Text(
                  "Latest Offers",
                  style: TextStylesConstants.titleLargeTextStyle(context: context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
