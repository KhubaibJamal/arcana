import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/screens/account%20history/account_history_screen.dart';
import 'package:agha_steel/screens/complaints/complaints_screen.dart';
import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:agha_steel/screens/order%20history/order_history_screen.dart';
import 'package:agha_steel/screens/profile/profile_screen.dart';
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
                // home
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

                // notification
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

                // account history
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

                // Order History
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

                // Scheduled Order
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

                // feedback/ complaints
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, ComplaintsScreen.routeName);
                  },
                  title: Text(
                    "Feedback/Inquiry/Complaints",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  leading: SvgPicture.asset('assets/icons/mail.svg'),
                ),

                const Spacer(),

                // logout button
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(15.0)),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! / 2.75,
                        child: DefaultButton(
                          text: "Log Out",
                          textColor: Colors.white,
                          press: () {},
                        ),
                      ),
                      Positioned(
                        top: 22,
                        left: 15,
                        child: SvgPicture.asset(
                          'assets/icons/logout.svg',
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(20))
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
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
            const Spacer(),
            const Text(
              "Ejaz Ahmed",
              style: TextStyle(
                color: kTextColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
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
