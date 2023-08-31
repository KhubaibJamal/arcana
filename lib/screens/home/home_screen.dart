import 'package:agha_steel/screens/home/component/body.dart';
import 'package:agha_steel/screens/home/component/home_drawer.dart';
import 'package:flutter/material.dart';

import 'component/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        child: HomeDrawer(height: height, width: width),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: DrawerIcon(
          press: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: const AppBarWidgetList(),
      ),
      body: const Body(),
    );
  }
}
