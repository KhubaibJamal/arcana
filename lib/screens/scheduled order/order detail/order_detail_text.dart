import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

List<Map<String, String>> orderDetailList = [
  {
    "title1": "Order Date",
    "subTitle1": "18-4-2022",
    "title2": "Order Number",
    "subTitle2": "#10013332",
  },
  {
    "title1": "Driver Contact",
    "subTitle1": "Ejaz Ahmed",
    "title2": "Delivery Date",
    "subTitle2": "18-04-2022",
  },
  {
    "title1": "DCA Number",
    "subTitle1": "64646784",
    "title2": "Delivery Address",
    "subTitle2": "Karachi",
  },
  {
    "title1": "Vehicle No",
    "subTitle1": "ACA-078",
    "title2": "P.O Reference",
    "subTitle2": "ACA-078",
  },
];

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          orderDetailList.length,
          (index) => OrderDetailColumnText(
            title1: "${orderDetailList[index]['title1']}",
            subTitle1: "${orderDetailList[index]['subTitle1']}",
            title2: "${orderDetailList[index]['title2']}",
            subTitle2: "${orderDetailList[index]['subTitle2']}",
          ),
        ),
      ),
    );
  }
}

class OrderDetailColumnText extends StatelessWidget {
  final String title1, subTitle1;
  final String title2, subTitle2;
  const OrderDetailColumnText({
    super.key,
    required this.title1,
    required this.subTitle1,
    required this.title2,
    required this.subTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: scheduledOrderSubTitleText,
            ),
            Text(
              subTitle1,
              style: scheduledOrderTitleText,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title2,
              style: scheduledOrderSubTitleText,
            ),
            Text(
              subTitle2,
              style: scheduledOrderTitleText,
            ),
          ],
        ),
      ],
    );
  }
}
