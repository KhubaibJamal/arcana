import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class OrderButtons extends StatelessWidget {
  const OrderButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: SizeConfig.screenWidth! / 2.5,
          child: DefaultButton(
            text: "Order received",
            textColor: Colors.white,
            backgroundColor: kGreenColor,
            press: () {},
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! / 4,
              child: DefaultButton(
                text: "",
                textColor: Colors.white,
                backgroundColor: kRedColor,
                press: () {},
              ),
            ),
            Positioned(
              top: 18,
              right: 40,
              child: SvgPicture.asset(
                "assets/icons/pdf icon.svg",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
