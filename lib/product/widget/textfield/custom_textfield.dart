import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, required this.controller, required this.focusNode, required this.keyboardType, required this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.dynamicWidth(0.9),
        height: context.dynamicHeight(0.07),
        decoration: const BoxDecoration(
          color: ColorConstants.textFieldColor,
          borderRadius: BorderRadius.all(
            Radius.circular(90),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              cursorColor: ColorConstants.brightOrange,
              cursorRadius: const Radius.circular(45),
              controller: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.textFieldColor),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstants.textFieldColor,
                  ),
                ),
                hintText: hintText,
                hintStyle: TextStylesConstants.textFieldTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}