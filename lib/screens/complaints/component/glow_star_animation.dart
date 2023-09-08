import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';

class GlowStarAlertDialog extends StatelessWidget {
  const GlowStarAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            "THANK YOU",
            style: tableHeadingStyle.copyWith(
              color: Colors.black,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/star.gif',
            fit: BoxFit.cover,
          ),
          Text(
            "Review submitted!",
            style: tableColumnStyle,
          ),
        ],
      ),
    );
  }
}
