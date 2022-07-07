import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.leading, this.action}) : super(key: key);
  final Widget leading;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        const Spacer(),
        action ??
            const Icon(
              Icons.shopping_cart,
              color: ColorConstants.darkShadow,
            ),
      ],
    );
  }
}
