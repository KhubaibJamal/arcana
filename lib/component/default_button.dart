import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback press;
  const DefaultButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.press,
    this.backgroundColor = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          shadowColor: kPrimaryColor,
          foregroundColor: Colors.white,
          backgroundColor: backgroundColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: textColor,
          ),
        ),
      ),
    );
  }
}
