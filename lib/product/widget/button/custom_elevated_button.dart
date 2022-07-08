import 'package:flutter/material.dart';
import 'package:shopping/core/extension/context_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.primary,
    required this.child,
    this.height = 0.069,
    this.width = 0.9,
  }) : super(key: key);
  final VoidCallback onPressed;
  final Color primary;
  final Widget child;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary,
        minimumSize: Size(
          context.dynamicWidth(width),
          context.dynamicHeight(height),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(90),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
