import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class OrderHistoryTable extends StatelessWidget {
  const OrderHistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(18, 18),
              blurRadius: 36,
              color: const Color(0xFFD3D1D840).withOpacity(0.3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order No.", style: tableHeadingStyle),
                Text("Order Detail", style: tableHeadingStyle),
                Text("Rate Avg", style: tableHeadingStyle),
              ],
            ),
            ...List.generate(5, (index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("10013332", style: tableColumnStyle),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Scheduled Date: ",
                                  style: scheduledOrderSubTitleText),
                              Text("14-04-22", style: tableColumnStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order QTY MT: ",
                                  style: scheduledOrderSubTitleText),
                              Text("50", style: tableColumnStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dispatched QTY MT:",
                                  style: scheduledOrderSubTitleText),
                              Text("50", style: tableColumnStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Invoice QTY MT:",
                                  style: scheduledOrderSubTitleText),
                              Text("59.50", style: tableColumnStyle),
                            ],
                          ),
                          const Divider(
                            thickness: 1.5,
                            color: kSecondaryTextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text("151.500", style: tableColumnStyle),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
