import 'package:agha_steel/component/custom_headr.dart';
import 'package:flutter/material.dart';

import 'verification_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: ListView(
        children: [
          const CustomHeader(),
          SizedBox(height: height * 0.08),
          VerificationText(
            height: height,
          ),
        ],
      ),
    );
  }
}
