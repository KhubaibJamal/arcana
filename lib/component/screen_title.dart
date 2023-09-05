import 'package:flutter/material.dart';
import '../size_config.dart';

class ScreenTitle extends StatelessWidget {
  final String title;
  final Color textColor;
  const ScreenTitle({super.key, required this.title, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: getProportionateScreenWidth(18),
      ),
    );
  }
}
