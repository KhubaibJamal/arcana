import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

List<Map<String, String>> profileMenu = [
  {"title": "Code", "subTitle": "018-4986"},
  {"title": "Full Name", "subTitle": "Ejaz Ahmed"},
  {"title": "Email", "subTitle": "House No. 12,  "},
  {"title": "Street (Include house number)", "subTitle": "(+92) 300-1234567"},
  {"title": "City", "subTitle": "Karachi"},
  {"title": "CNIC", "subTitle": "12345-1234567-1"},
  {"title": "STRN", "subTitle": "1234567891011"},
  {"title": "NTN", "subTitle": "1234567-1"},
];

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        profileMenu.length,
        (index) => ProfileMenuItem(
          title: profileMenu[index]["title"],
          text: profileMenu[index]["subTitle"],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String? title, text;
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(
            color: kSecondaryTextColor,
            fontWeight: FontWeight.w400,
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: SizeConfig.screenWidth! * 0.9,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              color: kSecondaryTextColor,
              width: 1.5,
            ),
          ),
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenWidth(17),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
      ],
    );
  }
}
