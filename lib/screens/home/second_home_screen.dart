import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const.dart';
import '../../size_config.dart';
import '../account history/account_history_screen.dart';
import '../order history/order_history_screen.dart';
import '../scheduled order/scheduled_order_screen.dart';
import 'component/body.dart';
import 'component/home_chart.dart';

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
          const Stack(
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

class CustomListTile extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final VoidCallback press;
  const CustomListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
            spreadRadius: 3,
            color: Colors.grey,
          )
        ],
      ),
      child: ListTile(
        onTap: press,
        title: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: SvgPicture.asset(
          leadingIcon,
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
