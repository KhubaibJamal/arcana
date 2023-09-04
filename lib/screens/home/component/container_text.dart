import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Available Limit",
          style: TextStyle(
            color: kSecondaryTextColor,
          ),
        ),
        const Text(
          "365,000",
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
      ],
    );
  }
}
