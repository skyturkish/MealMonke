import 'package:flutter_onboard/flutter_onboard.dart';

class ListOnBoardModel {
  static List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Set your own goals and get better",
      description: "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets/images/onboard_photo_1.png",
    ),
    const OnBoardModel(
      title: "Track your progress with statistics",
      description: "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/images/onboard_photo_2.png',
    ),
    const OnBoardModel(
      title: "Create photo comparisons and share your results",
      description: "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/onboard_photo_3.png',
    ),
  ];
}
