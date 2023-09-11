import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final VoidCallback press;
  const CustomListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
            spreadRadius: 3,
            color: Colors.grey,
          )
        ],
      ),
      child: ListTile(
        onTap: press,
        title: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: SvgPicture.asset(
          leadingIcon,
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
