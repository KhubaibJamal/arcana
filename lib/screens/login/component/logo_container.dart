import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      child: Container(
        height: height * 0.3,
        width: width * 0.8,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
