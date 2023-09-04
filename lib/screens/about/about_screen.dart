import 'package:agha_steel/screens/about/component.dart/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.about),
    );
  }
}
