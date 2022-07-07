import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/authenticate/onboard/model/on_board_model.dart';
import 'package:shopping/view/authenticate/onboard/model/page_indicator_style_model.dart';
import 'package:shopping/view/authenticate/onboard/widget/page_indicator.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return MySafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: SizedBox(
            height: context.dynamicHeight(1),
            width: context.dynamicWidth(1),
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: OnBoardList.pages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration:
                          BoxDecoration(image: DecorationImage(image: AssetImage(OnBoardList.pages[index].imagePath))),
                    );
                  },
                  onPageChanged: (int index) {
                    pageindex = index;
                  },
                ),
                SizedBox(
                  height: context.dynamicHeight(1),
                  width: context.dynamicWidth(1),
                  child: PageIndicator(
                    count: OnBoardList.pages.length,
                    activePage: pageindex,
                    pageIndicatorStyle: PageIndicatorStyle(
                        width: context.dynamicWidth(0.05 * OnBoardList.pages.length),
                        activeColor: ColorConstants.brightOrange,
                        activeSize: const Size(18, 18),
                        inactiveColor: ColorConstants.paleRed,
                        inactiveSize: const Size(12, 12)),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
/*   PageIndicator(
                count = OnBoardList.pages.length,
                activePage = pageindex,
                pageIndicatorStyle = PageIndicatorStyle(
                    width: context.dynamicWidth(0.05 * OnBoardList.pages.length),
                    activeColor: ColorConstants.brightOrange,
                    activeSize: const Size(18, 18),
                    inactiveColor: ColorConstants.textFieldColor,
                    inactiveSize: const Size(12, 12)),
              ), */