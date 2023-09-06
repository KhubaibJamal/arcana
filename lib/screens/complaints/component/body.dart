import 'package:agha_steel/screens/complaints/component/custom_rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(height: SizeConfig.screenHeight! * 0.02),
          Center(child: Image.asset('assets/images/complaints.png')),
          SizedBox(height: getProportionateScreenWidth(30)),
          const CustomRatingBar(),
        ],
      ),
    );
  }
}
