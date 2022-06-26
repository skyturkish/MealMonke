import 'package:easy_localization/easy_localization.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';

class OnBoardModel {
  final String title;
  final String description;
  final String imagePath;
  OnBoardModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class OnBoardList {
  static List<OnBoardModel> pages = [
    OnBoardModel(
      title: LocaleKeys.findFood.tr(),
      description: LocaleKeys.discoverTheBestFoods.tr(),
      imagePath: "assets/images/onboard/first.jpg",
    ),
    OnBoardModel(
      title: LocaleKeys.fastDelivery.tr(),
      description: LocaleKeys.fastFood.tr(),
      imagePath: "assets/images/onboard/second.jpg",
    ),
    OnBoardModel(
      title: LocaleKeys.liveTracking.tr(),
      description: LocaleKeys.realTime.tr(),
      imagePath: "assets/images/onboard/third.jpg",
    ),
  ];
}
