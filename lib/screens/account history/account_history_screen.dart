import 'package:agha_steel/screens/account%20history/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/icon_container.dart';
import '../../component/screen_title.dart';
import '../../const.dart';

class AccountHistoryScreen extends StatelessWidget {
  static String routeName = "/account_history";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: IconContainer(),
        ),
        title: const ScreenTitle(
          title: "Order History",
          textColor: kTextColor,
        ),
      ),
      body: const Body(),
    );
  }
}
