import 'package:agha_steel/const.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String? currentOption;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          activeColor: kPrimaryColor,
          value: "Verified ledger",
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
        Text("Verified ledger", style: radioButtonTextStyle),
        Radio(
          activeColor: kPrimaryColor,
          value: "Verified Deposit slip",
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
        Text("Deposit slip", style: radioButtonTextStyle),
      ],
    );
  }
}
