import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.focusNode,
      required this.keyboardType,
      required this.hintText,
      this.height,
      this.label})
      : super(key: key);
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final double? height;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: height ?? context.dynamicWidth(0.9),
        height: context.dynamicHeight(0.069),
        decoration: const BoxDecoration(
          color: ColorConstants.textFieldColor,
          borderRadius: BorderRadius.all(
            Radius.circular(90),
          ),
        ),
        child: Center(
          child: Padding(
            padding: context.paddingMediumHorizontal,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              cursorColor: ColorConstants.brightOrange,
              cursorRadius: const Radius.circular(45),
              controller: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  label: label,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.textFieldColor),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.textFieldColor,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: TextStylesConstants.textFieldTextStyle(context: context)),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Enter your $hintText';
                }
                return null;
              },
            ),
          ),
        ),
      ),
    );
  }
}
