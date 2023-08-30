import 'package:agha_steel/screens/home/component/body.dart';
import 'package:flutter/material.dart';

import 'component/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      drawer: HomeDrawer(height: height, width: width),
    );
  }
}
