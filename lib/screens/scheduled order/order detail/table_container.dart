import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(18, 18),
            blurRadius: 36,
            color: const Color(0xFFD3D1D840).withOpacity(0.09),
          ),
        ],
      ),
      child: Column(
        children: [
          Text("Items Details", style: scheduledOrderSubTitleText),
          SizedBox(height: getProportionateScreenWidth(20)),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(10.0)),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              columnWidths: const {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(3),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(3),
              },
              children: [
                TableRow(
                    // decoration: BoxDecoration(color: Colors.red),
                    children: [
                      Text("Name/size", style: tableHeadingStyle),
                      Text("Qty", style: tableHeadingStyle),
                      Text("Deliver Qty", style: tableHeadingStyle),
                      Text("Rate", style: tableHeadingStyle),
                    ]),
                TableRow(children: [
                  Text("Steel Bar/2", style: tableColumnStyle),
                  Text("10x", style: tableColumnStyle),
                  Text("x8", style: tableColumnStyle),
                  Text("50000", style: tableColumnStyle),
                ]),
                TableRow(children: [
                  Text("Steel Bar/4", style: tableColumnStyle),
                  Text("15x", style: tableColumnStyle),
                  Text("x14", style: tableColumnStyle),
                  Text("80000", style: tableColumnStyle),
                ]),
                TableRow(children: [
                  Text("Steel Bar/3", style: tableColumnStyle),
                  Text("18x", style: tableColumnStyle),
                  Text("x18", style: tableColumnStyle),
                  Text("96000", style: tableColumnStyle),
                ]),
                TableRow(children: [
                  Text("Steel Bar/2", style: tableColumnStyle),
                  Text("3x", style: tableColumnStyle),
                  Text("x3", style: tableColumnStyle),
                  Text("10000", style: tableColumnStyle),
                ]),
              ],
            ),
          ),
          // SizedBox(height: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}
