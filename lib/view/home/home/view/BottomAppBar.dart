// ignore_for_file: file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/home/home/view/home_view.dart';
import 'package:shopping/view/home/menu/view/menu_view.dart';
import 'package:shopping/view/home/more/view/more_view.dart';
import 'package:shopping/view/home/offers/view/offers_view.dart';
import 'package:shopping/view/home/profile/view/profile_view.dart';

class BottomAppBarView extends StatefulWidget {
  const BottomAppBarView({Key? key}) : super(key: key);

  @override
  State<BottomAppBarView> createState() => _BottomAppBarViewState();
}

class _BottomAppBarViewState extends State<BottomAppBarView> {
  bool isHome = true;
  int currentIndex = 0;
  final List<Widget> screens = [
    const MenuView(),
    const OffersView(),
    const ProfileView(),
    const MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MySafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: isHome == true
            ? const HomeView()
            : IndexedStack(
                index: currentIndex,
                children: screens,
              ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8,
          shape: const CircularNotchedRectangle(),
          elevation: 0,
          color: const Color.fromARGB(255, 245, 241, 241),
          child: BottomNavigationBar(
            selectedItemColor: isHome == true ? ColorConstants.wolfram : ColorConstants.brightOrange,
            unselectedItemColor: ColorConstants.wolfram,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            backgroundColor: Theme.of(context).primaryColor.withAlpha(0),
            elevation: 0, // 0 removes ugly rectangular NavBar shadow

            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(
              () {
                currentIndex = index;
                isHome = false;
              },
            ),
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.menu),
                label: LocaleKeys.menu.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.shopping_bag),
                label: LocaleKeys.offers.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.account_box),
                label: LocaleKeys.profile.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.more_horiz_outlined),
                label: LocaleKeys.more.tr(),
              ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: context.dynamicHeight(0.07701),
          height: context.dynamicHeight(0.07701),
          child: RawMaterialButton(
            fillColor: isHome == true ? ColorConstants.brightOrange : ColorConstants.wolfram,
            onPressed: () {
              isHome = true;
              setState(() {});
            },
            shape: const CircleBorder(),
            //elevation: 0.0,
            child: Icon(
              Icons.home,
              color: ColorConstants.white,
              size: context.dynamicHeight(0.04310),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
