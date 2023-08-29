import 'package:flutter/material.dart';

import '../../../const.dart';

class ForgotText extends StatelessWidget {
  const ForgotText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I don't receive a code!",
          style: TextStyle(
            color: kSecondaryTextColor,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            " Please resend",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
