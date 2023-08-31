import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/home/component/home_chart.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderText(),
        SizedBox(height: 20),
        PurchaseText(),
        HomeChart(),
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
