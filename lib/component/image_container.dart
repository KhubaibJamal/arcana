import 'package:flutter/material.dart';

import '../size_config.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenWidth(12.0)),
      height: SizeConfig.screenHeight! / 2.5,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        // color: Colors.red,
        border: Border.all(
          width: 1.5,
          color: const Color(0xFFBDBDBD),
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(20, 20),
            blurRadius: 20,
            color: const Color(0xFFFFFFFF).withOpacity(0.25),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
