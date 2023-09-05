import 'package:agha_steel/component/default_button.dart';
import 'package:flutter/material.dart';

import '../../../../component/icon_container.dart';
import '../../../../component/screen_title.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';
import '../order_detail_text.dart';
import '../table_container.dart';
import '../total_amount_text.dart';

class OrderDetail extends StatelessWidget {
  static String routeName = '/order_detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: IconContainer(),
        ),
        title: const ScreenTitle(
          title: "Order Details",
          textColor: kPrimaryColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              const TextContainer(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const TableContainer(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const TotalAmountText(),

              // button
              SizedBox(height: getProportionateScreenWidth(20)),
              SizedBox(
                width: SizeConfig.screenWidth! / 2,
                child: DefaultButton(
                  text: "\t\tDelivery Chalan",
                  textColor: Colors.white,
                  backgroundColor: kRedColor,
                  press: () {},
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
