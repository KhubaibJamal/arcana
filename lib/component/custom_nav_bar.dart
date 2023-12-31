import 'package:agha_steel/screens/about/about_screen.dart';
import 'package:agha_steel/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../enum.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    const Color inactiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // home icon
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/home2.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // about
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/about.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.about == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // setting
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/setting2.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.setting == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            // profile
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
