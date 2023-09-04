import 'package:agha_steel/component/custom_headr.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import 'verification_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const CustomHeader(),
          SizedBox(height: SizeConfig.screenHeight! * 0.08),
          const VerificationText(),
        ],
      ),
    );
  }
}
