import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TempView extends StatelessWidget {
  const TempView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("welcome".tr()),
      ),
    );
  }
}
