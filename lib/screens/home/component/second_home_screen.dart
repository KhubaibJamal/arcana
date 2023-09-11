import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import '../../account history/account_history_screen.dart';
import '../../order history/order_history_screen.dart';
import '../../scheduled order/scheduled_order_screen.dart';
import 'body.dart';
import 'custom_listtile.dart';
import 'home_chart.dart';

class SecondHomeScreen extends StatelessWidget {
  const SecondHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderText(balance: "1,500,000"),
          SizedBox(height: getProportionateScreenWidth(20)),
          const PurchaseText(),
          SizedBox(height: getProportionateScreenWidth(15)),
          // chart
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(8),
              right: getProportionateScreenWidth(8),
            ),
            child: const Stack(
              children: [
                HomeChart(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GraphText(text: "Purchase", color: kPrimaryColor),
                    SizedBox(width: 15),
                    GraphText(text: "Target", color: kSecondaryColor),
                  ],
                ),
              ],
            ),
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
