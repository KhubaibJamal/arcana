import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CompanyText extends StatelessWidget {
  const CompanyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "The Company",
          style: TextStyle(
            color: const Color(0xFFf38231),
            fontSize: getProportionateScreenWidth(25),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Text(
          "Agha Steel Industries Limited (ASIL) is the fully automatic leading Steel Re-Rolling Manufacturing Company in Pakistan with an annual capacity of 240,000 Metric Ton per annum. ASIL represents one of the largest private sector investments in the steel industry of Pakistan. ASIL is the fastest growing steel manufacturers of Pakistan, which prides in its focus on continuously improving the quality of its products. ASIL is Pakistan's first completely automatic Rolling Mill with 17 Stand - 2 Strand, having a capacity to make Re-Bars ranging from 9.5mm to 40mm at the maximum speed of 18 m/s, thus leading Pakistan into a new era of steel-making.",
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
      ],
    );
  }
}
