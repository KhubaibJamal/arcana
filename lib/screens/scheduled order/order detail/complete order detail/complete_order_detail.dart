import 'package:agha_steel/component/icon_container.dart';
import 'package:agha_steel/screens/scheduled%20order/order%20detail/table_container.dart';
import 'package:agha_steel/screens/scheduled%20order/order%20detail/total_amount_text.dart';
import 'package:flutter/material.dart';
import '../../../../const.dart';
import '../../../../size_config.dart';
import '../order_button.dart';
import '../order_detail_text.dart';

class CompleteOrderDetail extends StatelessWidget {
  static String routeName = '/complete_order_detail';

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
        title: Text(
          "Order Details",
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.w800,
            fontSize: getProportionateScreenWidth(18),
          ),
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
              const OrderButtons(),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
