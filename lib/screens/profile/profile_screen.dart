import 'package:agha_steel/screens/profile/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
