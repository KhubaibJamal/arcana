import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenWidth(100),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
        child: Text(
          "Welcome to",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
