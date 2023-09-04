import 'package:agha_steel/component/icon_container.dart';
import 'package:agha_steel/screens/setting/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/custom_nav_bar.dart';
import '../../enum.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = "/setting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const IconContainer(),
        title: const Text(
          "Setting",
          style: TextStyle(
            color: Color(0xFFf38231),
          ),
        ),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.setting),
    );
  }
}
