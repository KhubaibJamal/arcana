import 'package:agha_steel/const.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import '../second_home_screen.dart';
import 'first_home_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        FirstHomeScreen(),
        SecondHomeScreen(),
      ],
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
  final String balance;
  const HeaderText({
    super.key,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Current Balance ",
          style: TextStyle(
            color: kSecondaryTextColor,
          ),
        ),
        Text(
          balance,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
