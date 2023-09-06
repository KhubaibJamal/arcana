import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class FeedbackBox extends StatelessWidget {
  const FeedbackBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      height: SizeConfig.screenHeight! / 3.5,
      width: SizeConfig.screenWidth! * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        // color: Colors.red,
        border: Border.all(width: 1.5, color: kGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        maxLines: 3,
        style: scheduledOrderSubTitleText.copyWith(
            fontSize: getProportionateScreenWidth(17)),
        decoration: const InputDecoration(
          hintText: "What can we improve?",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
