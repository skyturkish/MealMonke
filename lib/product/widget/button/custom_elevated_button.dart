import 'package:flutter/material.dart';
import 'package:shopping/core/extension/context_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.onPressed, required this.primary, required this.child})
      : super(key: key);
  final VoidCallback onPressed;
  final Color primary;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primary,
          minimumSize: Size(
            context.dynamicWidth(0.9),
            context.dynamicHeight(0.07),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(90),
            ),
          )),
      onPressed: onPressed,
      child: child,
    );
  }
}
