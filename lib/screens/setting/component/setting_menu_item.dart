import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

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
