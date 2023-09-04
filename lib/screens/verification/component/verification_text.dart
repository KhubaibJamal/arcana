import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';
import 'forgot_text.dart';
import 'otp_form.dart';

class VerificationText extends StatelessWidget {
  const VerificationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Verification Code",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.03),
          Text(
            "Please type the verification code sent to your mobile number",
            style: TextStyle(
              color: kSecondaryTextColor,
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
            child: const OtpForm(),
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.08),
          const ForgotText()
        ],
      ),
    );
  }
}
