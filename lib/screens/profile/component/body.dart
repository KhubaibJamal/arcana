import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/profile/component/profile_image.dart';
import 'package:agha_steel/screens/profile/component/profile_menu.dart';
import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const IconContainer(),
              const ProfileImage(),
              SizedBox(height: getProportionateScreenWidth(20)),
              Text(
                'Ejaz Ahmed',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(30)),
              const ProfileMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
