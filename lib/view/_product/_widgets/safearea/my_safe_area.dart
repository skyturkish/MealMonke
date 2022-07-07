import 'package:flutter/material.dart';

// @immutable
// class MySafeArea extends SafeArea {
//   const MySafeArea({
//     Key? key,
//     required this.child,
//   }) : super(
//             key: key,
//             child: child,
//             top: false,
//             bottom: true,
//             left: true,
//             right: true,
//             minimum: const EdgeInsets.all(0),
//             maintainBottomViewPadding: false);

//   @override
//   final Widget child;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: child);
//   }
// }

class MySafeArea extends StatelessWidget {
  const MySafeArea({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: child,
    );
  }
}
