import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF37020);
const kSecondaryColor = Color(0xFFF2C7B6);
const kTextColor = Colors.black;
const kSecondaryTextColor = Color(0xFF9796A1);
const kGreenColor = Color(0xFF34A853);
const kRedColor = Color(0xFFEA4335);
const kGreyColor = Color(0xFFD8D8D8);

final phoneInputDecoration = InputDecoration(
  prefixIcon: Image.asset('assets/images/pak flag.png'),
  hintText: "(+92) 300-1234567",
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kPrimaryColor, width: 1.5),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kPrimaryColor, width: 1.5),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kPrimaryColor, width: 1.5),
  ),
);

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(
    vertical: 15,
  ),
  border: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: kGreyColor,
      width: 1.5,
    ),
  );
}

final scheduledOrderTitleText = TextStyle(
  color: kTextColor,
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.w700,
);

final scheduledOrderSubTitleText = TextStyle(
  color: kSecondaryTextColor,
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.w400,
);

final tableHeadingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
);

final tableColumnStyle = TextStyle(
  color: kTextColor,
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.w500,
);

final orangeTextStyle = TextStyle(
  color: kPrimaryColor,
  fontWeight: FontWeight.w800,
  fontSize: getProportionateScreenWidth(18),
);

final radioButtonTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(15),
  fontWeight: FontWeight.w700,
  fontFamily: "SF Pro Rounded",
);
