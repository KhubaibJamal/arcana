import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import 'container_text.dart';

class AnimatedCircularContainer extends StatelessWidget {
  const AnimatedCircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.screenWidth! * 0.1,
      // height: 150,
      margin: EdgeInsets.all(getProportionateScreenWidth(15)),
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
            spreadRadius: 3,
            color: Colors.grey,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularPercentIndicator(
            radius: 70.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.75,
            center: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "75%",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getProportionateScreenWidth(20),
                  ),
                ),
                const Text(
                  "Utilize",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                  ),
                ),
              ],
            ),
            linearGradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerLeft,
              colors: [
                kSecondaryTextColor,
                kPrimaryColor,
              ],
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: kSecondaryColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(3, (index) => const ContainerText()),
            ],
          )
          // ContainerText(),
        ],
      ),
    );
  }
}
