import 'package:agha_steel/component/icon_container.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/appbar logo.png",
          // fit: BoxFit.cover,
        ),
        const Positioned(
          bottom: 15,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: IconContainer(),
          ),
        ),
      ],
    );
  }
}
