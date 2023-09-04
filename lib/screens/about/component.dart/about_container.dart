import 'package:flutter/material.dart';

import '../../../size_config.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      // height: 100,
      height: getProportionateScreenWidth(100),
      decoration: const BoxDecoration(
        color: Color(0xFF090909),
        // color: Colors.red,
      ),
      child: const Center(
        child: Text.rich(
          TextSpan(
              text: "Home / About ASIL / ",
              style: TextStyle(
                color: Color(0xFFf38231),
              ),
              children: [
                TextSpan(
                  text: "The Company",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
