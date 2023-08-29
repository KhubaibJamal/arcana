import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../verification/verification_screen.dart';

class LoginText extends StatelessWidget {
  const LoginText({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Login",
            style: TextStyle(
              color: kTextColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.03),
          const Text(
            "Enter your phone number to verify your account",
            style: TextStyle(
              color: kSecondaryTextColor,
              fontSize: 18,
            ),
          ),
          SizedBox(height: height * 0.08),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Image.asset('assets/images/pak flag.png'),
              hintText: "(+92) 300-1234567",
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
          SizedBox(height: height * 0.08),
          Center(
            child: SizedBox(
              width: width / 2,
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
