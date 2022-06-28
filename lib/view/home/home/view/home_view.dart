import 'package:flutter/material.dart';
import 'package:shopping/view/authenticate/login/view/login_view.dart';
import 'package:shopping/view/authenticate/onboard/view/on_board_view.dart';
import 'package:shopping/view/authenticate/register/view/register_view.dart';
import 'package:shopping/view/home/more/view/more_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const LoginView(),
    const RegisterView(),
    const OnBoardView(),
    const MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            elevation: 0,
            color: Theme.of(context).primaryColor.withAlpha(255),
            child: BottomNavigationBar(
                backgroundColor: Theme.of(context).primaryColor.withAlpha(0),
                elevation: 0, // 0 removes ugly rectangular NavBar shadow

                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex,
                onTap: (index) => setState(
                      () => currentIndex = index,
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
                ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
/*,*/