import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 300,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "ASIL represents one of the largest\nprivate sector investments in the\nsteel industry of Pakistan",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
