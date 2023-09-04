import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingMenuItem(
          title: "Notification",
          subTitle: "SMS and Push Notification",
          bgColor: const Color(0xFFF37020),
          icon: "assets/icons/notification.svg",
          press: () {
            notificationBottomSheet(context);
          },
        ),
        SettingMenuItem(
          title: "Guidelines",
          subTitle: "Terms, Conditions, & Privacy",
          bgColor: const Color(0xFF8C32FF),
          icon: "assets/icons/guidelines.svg",
          press: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: SizeConfig.screenHeight! / 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            "Settings",
                            style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: getProportionateScreenWidth(20),
                            ),
                          ),
                          const Spacer(flex: 2),
                          Expanded(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: kTextColor),
                      SettingMenuItem(
                        title: "Terms",
                        bgColor: const Color(0xFFFF9900),
                        icon: 'assets/icons/notification.svg',
                        press: () {},
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        SettingMenuItem(
          title: "Rate App",
          subTitle: "Review on app store",
          bgColor: const Color(0xFFFFBF1A),
          icon: "assets/icons/Rating.svg",
          press: () {},
        ),
        SettingMenuItem(
          title: "Log Out",
          subTitle: "Log Out",
          bgColor: const Color(0xFFFF003D),
          icon: "assets/icons/logout2.svg",
          press: () {},
        ),
      ],
    );
  }

  Future<dynamic> notificationBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: SizeConfig.screenHeight! / 2,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                  const Spacer(flex: 2),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(color: kTextColor),
              notificationBottomSheetContainer(),
              notificationBottomSheetContainer(),
              notificationBottomSheetContainer(),
            ],
          ),
        );
      },
    );
  }

  Container notificationBottomSheetContainer() {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Switch Example',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w600,
              color: kTextColor,
            ),
          ),
          const SizedBox(width: 10.0),
          Switch(
            activeColor: const Color(0xFF03DA4C),
            value: true,
            onChanged: (bool newValue) {},
          ),
        ],
      ),
    );
  }
}

class SettingMenuItem extends StatelessWidget {
  final String title, icon;
  final String? subTitle;
  final Color bgColor;
  final VoidCallback press;

  const SettingMenuItem({
    super.key,
    required this.title,
    this.subTitle,
    required this.bgColor,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          height: 30,
          width: 30,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.w600,
          fontSize: getProportionateScreenWidth(17),
        ),
      ),
      subtitle: Text(
        subTitle!,
        style: TextStyle(
          color: kSecondaryTextColor,
          fontWeight: FontWeight.w500,
          fontSize: getProportionateScreenWidth(13),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: kTextColor,
      ),
    );
  }
}
