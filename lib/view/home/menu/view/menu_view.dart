import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/product/widget/appbar/custom_appbar.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
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
    return MySafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: CustomAppBar(
                leading: Text(
                  "Menu",
                  style: TextStylesConstants.titleLargeTextStyle(context: context),
                ),
              ),
            ),
            Padding(
              padding: context.paddingOnlyTopMedium,
              child: CustomTextField(
                controller: _searchController,
                keyboardType: TextInputType.name,
                hintText: "Search Food",
                label: const Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.5972),
              width: context.dynamicWidth(1),
              child: Padding(
                padding: context.paddingOnlyTopMedium,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: ColorConstants.brightOrange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(55),
                          bottomRight: Radius.circular(55),
                        ),
                      ),
                      height: context.dynamicHeight(0.5972),
                      width: context.dynamicWidth(0.2586),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
