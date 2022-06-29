import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/extension/context_extension.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
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
            selectedItemColor: isHome == true ? const Color(0xffb6b7b7) : ColorConstants.brightOrange,
            unselectedItemColor: const Color(0xffb6b7b7),
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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                label: 'More',
              ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: context.dynamicHeight(0.07701),
          height: context.dynamicHeight(0.07701),
          child: RawMaterialButton(
            fillColor: isHome == true ? ColorConstants.brightOrange : const Color(0xffb6b7b7),
            onPressed: () {
              isHome = true;
              setState(() {});
            },
            shape: const CircleBorder(),
            //elevation: 0.0,
            child: const Icon(
              Icons.home,
              color: ColorConstants.whiteTextField,
              size: 35,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}


/*Container(
  width: 200.0,
  height: 200.0,
  child: new RawMaterialButton(
    shape: new CircleBorder(),
    elevation: 0.0,
    child: Icon(
      Icons.favorite,
      color: Colors.blue,
    ),
    onPressed: () {},
  ),
);*/

