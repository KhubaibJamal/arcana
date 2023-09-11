import 'package:agha_steel/screens/home/component/body.dart';
import 'package:agha_steel/screens/home/component/home_drawer.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';
import 'component/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(
        child: HomeDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: DrawerIcon(
          press: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: AppBarWidgetList(
          onBackPressed: () {
            _pageController.previousPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut);
          },
          onForwardPressed: () {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut);
          },
        ),
      ),
      body: Body(pageController: _pageController),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
