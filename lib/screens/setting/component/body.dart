import 'package:agha_steel/screens/setting/component/setting_menu.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/setting.png')),
        SizedBox(height: getProportionateScreenWidth(20)),
        const SettingMenu(),
      ],
    );
  }
}
