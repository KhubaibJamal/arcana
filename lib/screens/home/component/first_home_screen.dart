import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import 'animated_circular_container.dart';
import 'body.dart';
import 'home_chart.dart';

class FirstHomeScreen extends StatelessWidget {
  const FirstHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderText(balance: "1,000,000"),
          SizedBox(height: getProportionateScreenWidth(20)),
          const PurchaseText(),
          SizedBox(height: getProportionateScreenWidth(15)),
          // chart
          const Stack(
            children: [
              HomeChart(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GraphText(text: "Purchase", color: kPrimaryColor),
                  SizedBox(width: 15),
                  GraphText(text: "Target", color: kSecondaryColor),
                ],
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(15)),

          // dots
          Container(height: 5, width: 5, color: kPrimaryColor),
          SizedBox(height: getProportionateScreenWidth(20)),

          // animated container
          const AnimatedCircularContainer(),
        ],
      ),
    );
  }
}
