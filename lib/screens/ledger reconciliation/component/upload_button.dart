import 'package:flutter/material.dart';

import '../../../const.dart';

class UploadButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final VoidCallback press;
  const UploadButton({
    super.key,
    required this.text,
    required this.bgColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: orangeTextStyle,
          ),
        ),
      ),
    );
  }
}
