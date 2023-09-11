import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import '../../verification/verification_screen.dart';

class LoginText extends StatelessWidget {
  const LoginText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          Text(
            "Enter your phone number to verify your account",
            style: TextStyle(
              color: kSecondaryTextColor,
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          TextField(
            decoration: phoneInputDecoration,
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          Center(
            child: SizedBox(
              width: SizeConfig.screenWidth! / 2,
              child: DefaultButton(
                text: "Verify",
                backgroundColor: Colors.black,
                textColor: Colors.white,
                press: () {
                  Navigator.pushNamed(context, VerificationScreen.routeName);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
