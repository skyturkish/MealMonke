import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/appbar/custom_appbar.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/view/_product/_widgets/listtile/menu_item.dart';
import 'package:shopping/view/home/menu/model/menu_item_model.dart';

part 'menu_view_part.dart';

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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: context.paddingMediumHorizontal,
              child: CustomAppBar(
                leading: Text(
                  LocaleKeys.menu.tr(),
                  style: TextStylesConstants.titleLargeTextStyle(context: context),
                ),
              ),
            ),
            Padding(
              padding: context.paddingOnlyTopMedium,
              child: CustomTextField(
                controller: _searchController,
                keyboardType: TextInputType.name,
                hintText: LocaleKeys.searchFood.tr(),
                label: const Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.6572),
              width: context.dynamicWidth(1),
              child: Padding(
                padding: context.paddingOnlyTopMedium,
                child: const Menu(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
