import 'package:flutter/material.dart';

import '../../../const.dart';

class ComplaintRadioButton extends StatefulWidget {
  final String value, text;
  const ComplaintRadioButton({
    super.key,
    required this.value,
    required this.text,
  });

  @override
  State<ComplaintRadioButton> createState() => _ComplaintRadioButtonState();
}

class _ComplaintRadioButtonState extends State<ComplaintRadioButton> {
  String? currentOption;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: kPrimaryColor,
          value: widget.value,
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
        Text(widget.text, style: radioButtonTextStyle),
      ],
    );
  }
}
