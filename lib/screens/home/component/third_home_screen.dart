import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import '../../account history/account_history_screen.dart';
import '../../order history/order_history_screen.dart';
import '../../scheduled order/scheduled_order_screen.dart';
import 'body.dart';
import 'custom_listtile.dart';

class ThirdHomeScreen extends StatelessWidget {
  const ThirdHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderText(balance: "15,200,000"),
          SizedBox(height: getProportionateScreenWidth(20)),
          const PurchaseText(),
          SizedBox(height: getProportionateScreenWidth(15)),
          // chart
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(8),
              right: getProportionateScreenWidth(8),
            ),
            child: const ThirdHomeScreenChart(),
          ),

          SizedBox(height: getProportionateScreenWidth(15)),

          // dots
          Container(height: 5, width: 5, color: kPrimaryColor),
          SizedBox(height: getProportionateScreenWidth(25)),

          Column(
            children: [
              CustomListTile(
                title: "Account History",
                leadingIcon: 'assets/icons/account history.svg',
                press: () {
                  Navigator.pushNamed(context, AccountHistoryScreen.routeName);
                },
              ),
              CustomListTile(
                title: "Order History",
                leadingIcon: 'assets/icons/order history.svg',
                press: () {
                  Navigator.pushNamed(context, OrderHistoryScreen.routeName);
                },
              ),
              CustomListTile(
                title: "Scheduled Order",
                leadingIcon: 'assets/icons/calender.svg',
                press: () {
                  Navigator.pushNamed(context, ScheduledOrderScreen.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThirdHomeScreenChart extends StatelessWidget {
  const ThirdHomeScreenChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.screenWidth!,
        height: 400,
        margin: const EdgeInsets.only(right: 8, left: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 3,
              color: Colors.grey,
            )
          ],
        ),
        padding: EdgeInsets.all(getProportionateScreenWidth(16)),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            majorGridLines: const MajorGridLines(width: 0),
          ),
          series: <ChartSeries>[
            // Define your data series for the primary axis
            ColumnSeries<SalesData, String>(
              width: 0.3,
              color: kPrimaryColor,
              dataSource: <SalesData>[
                SalesData('Jan', 20),
                SalesData('Feb', 5),
                SalesData('Mar', 8),
                SalesData('Apr', 15),
              ],
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.primarySales,
              // Customize the appearance of the bars
              dataLabelSettings: const DataLabelSettings(),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final double primarySales;

  SalesData(this.month, this.primarySales);
}
