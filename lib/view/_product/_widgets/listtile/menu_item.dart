import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/home/menu/model/menu_item_model.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final MenuItemModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: context.dynamicHeight(0.12),
            width: context.dynamicWidth(0.79),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(55),
                bottomLeft: Radius.circular(55),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: const Offset(0, 3),
                ),
              ],
              color: ColorConstants.white,
            ),
          ),
        ),
        SizedBox(
          height: context.dynamicHeight(0.12),
          width: context.dynamicWidth(0.95),
          child: Row(
            children: [
              Padding(
                padding: context.paddingMediumHorizontal,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(item.imagePath),
                  radius: 40,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.title,
                    style: TextStylesConstants.a(context: context),
                  ),
                  Text(
                    "${item.numberItem} Items",
                    style: TextStylesConstants.recentItemTextStyleMini(context: context),
                  )
                ],
              ),
              const Spacer(),
              CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
