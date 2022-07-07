import 'package:flutter/material.dart';

class MySafeArea extends SafeArea {
   Widget child;

  MySafeArea({
    Key? key,
    required this.child,
  }) : super(
            key: key,
            child: child,
            top: false,
            bottom: true,
            left: true,
            right: true,
            minimum: const EdgeInsets.all(0),
            maintainBottomViewPadding: false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}