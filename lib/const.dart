import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF37020);
const kSecondaryColor = Color(0xFFF2C7B6);
const kTextColor = Colors.black;
const kSecondaryTextColor = Color(0xFF9796A1);
const kGreenColor = Color(0xFF34A853);
const kRedColor = Color(0xFFEA4335);
const kGreyColor = Color(0xFFD8D8D8);

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
  fontWeight: FontWeight.w400,
);
