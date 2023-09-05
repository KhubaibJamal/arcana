import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class TotalAmountText extends StatelessWidget {
  const TotalAmountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(18, 18),
            blurRadius: 36,
            color: const Color(0xFFD3D1D840).withOpacity(0.09),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Total Amount", style: scheduledOrderTitleText),
          Text("236,0000", style: tableHeadingStyle),
        ],
      ),
    );
  }
}
