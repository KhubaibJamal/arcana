import 'package:agha_steel/screens/phone/component/login_text.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_headr.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const CustomHeader(),
          SizedBox(height: SizeConfig.screenHeight! * 0.08),
          const LoginText(),
        ],
      ),
    );
  }
}
