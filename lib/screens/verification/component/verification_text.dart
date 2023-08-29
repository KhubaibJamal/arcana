import 'package:flutter/material.dart';

import '../../../const.dart';
import 'forgot_text.dart';
import 'otp_form.dart';

class VerificationText extends StatelessWidget {
  final double height;
  const VerificationText({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Verification Code",
            style: TextStyle(
              color: kTextColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.03),
          const Text(
            "Please type the verification code sent to your mobile number",
            style: TextStyle(
              color: kSecondaryTextColor,
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: OtpForm(),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          const ForgotText()
        ],
      ),
    );
  }
}
