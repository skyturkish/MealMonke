import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/navigation/navigation_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/authenticate/onboard/model/on_board_model.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MySafeArea(
      child: Scaffold(
        body: OnBoard(
          pageController: _pageController,
          onSkip: () {},
          onDone: () {},
          onBoardData: ListOnBoardModel.onBoardData,
          titleStyles: TextStylesConstants.homePageMediumTitle(context: context),
          descriptionStyles: TextStylesConstants.sideTextStyle(context: context),
          pageIndicatorStyle: const PageIndicatorStyle(
            width: 100,
            inactiveColor: Colors.deepOrangeAccent,
            activeColor: Colors.deepOrange,
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12),
          ),
          // Either Provide onSkip Callback or skipButton Widget to handle skip state
          skipButton: TextButton(
            onPressed: () {
              // print('skipButton pressed');
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.deepOrangeAccent),
            ),
          ),
          // Either Provide onDone Callback or nextButton Widget to handle done state
          nextButton: OnBoardConsumer(
            builder: (context, ref, child) {
              final state = ref.watch(onBoardStateProvider);
              return InkWell(
                onTap: () {
                  _onNextTap(state);
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    NavigationConstants.HOME,
                    (route) => false,
                  );
                },
                child: Container(
                  width: context.dynamicHeight(0.2832),
                  height: context.dynamicWidth(0.1333),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [Colors.redAccent, Colors.deepOrangeAccent],
                    ),
                  ),
                  child: Text(
                    state.isLastPage ? LocaleKeys.done.tr() : LocaleKeys.next.tr(),
                    style: const TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}
