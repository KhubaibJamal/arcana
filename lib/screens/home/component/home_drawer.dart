import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/screens/account%20history/account_history_screen.dart';
import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:agha_steel/screens/order%20history/order_history_screen.dart';
import 'package:agha_steel/screens/scheduled%20order/scheduled_order_screen.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../const.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserInfo(),
          SizedBox(height: SizeConfig.screenHeight! * 0.05),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/home.svg'),
                ),
                ListTile(
                  title: Text(
                    "Notification",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/bell.svg'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AccountHistoryScreen.routeName);
                  },
                  title: Text(
                    "Account History",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/account history.svg'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, OrderHistoryScreen.routeName);
                  },
                  title: Text(
                    "Order History",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/order history.svg'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ScheduledOrderScreen.routeName);
                  },
                  title: Text(
                    "Scheduled Order",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/calender.svg'),
                ),
                ListTile(
                  title: Text(
                    "Feedback/ Inquiry\nComplaints",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/mail.svg'),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(15.0)),
                  child: SizedBox(
                    width: SizeConfig.screenWidth! / 3,
                    height: 60,
                    child: DefaultButton(
                      text: "Log Out",
                      textColor: Colors.white,
                      press: () {},
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            Spacer(),
            Text(
              "Ejaz Ahmed",
              style: TextStyle(
                color: kTextColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "ejaz_ahmed@gmail.com",
              style: TextStyle(
                color: kSecondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
