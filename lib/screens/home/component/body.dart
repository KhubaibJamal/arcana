import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/home/component/animated_circular_container.dart';
import 'package:agha_steel/screens/home/component/home_chart.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderText(),
          SizedBox(height: getProportionateScreenWidth(20)),
          const PurchaseText(),
          SizedBox(height: getProportionateScreenWidth(15)),
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
          Container(
            height: 5,
            width: 5,
            color: Colors.red,
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          const AnimatedCircularContainer(),
        ],
      ),
    );
  }
}

class GraphText extends StatelessWidget {
  final String text;
  final Color color;
  const GraphText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
      ],
    );
  }
}

class PurchaseText extends StatelessWidget {
  const PurchaseText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Purchase Graph",
      style: TextStyle(
        color: kTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Current Balance ",
          style: TextStyle(
            color: kSecondaryTextColor,
          ),
        ),
        Text(
          " 1,000,000",
          style: TextStyle(
            color: kTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
