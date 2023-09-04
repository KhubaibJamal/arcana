import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 300,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Text(
          "ASIL represents one of the largest\nprivate sector investments in the\nsteel industry of Pakistan",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
