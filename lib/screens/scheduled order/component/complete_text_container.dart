import 'package:agha_steel/const.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CompleteTextContainer extends StatelessWidget {
  const CompleteTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
          color: kGreenColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: Color(0xFF34A853),
            ),
          ],
        ),
        child: Text(
          "Complete",
          style: TextStyle(
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
}
