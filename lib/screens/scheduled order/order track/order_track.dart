import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class OrderTrack extends StatelessWidget {
  static String routeName = "/Order_track";

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
          "Order Tracking",
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w800,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text('Order Number', style: scheduledOrderSubTitleText),
                Text('#264100', style: orangeTextStyle),
                SizedBox(height: getProportionateScreenWidth(20)),
                Text('Estimate Delivery Time:', style: orangeTextStyle),
                SizedBox(height: getProportionateScreenWidth(50)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/order track.png'),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: SizeConfig.screenWidth!,
                            height: SizeConfig.screenHeight! * 0.1,
                            padding:
                                EdgeInsets.all(getProportionateScreenWidth(15)),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(18, 18),
                                  blurRadius: 36,
                                  color: const Color(0xFFD3D1D840)
                                      .withOpacity(0.09),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Line up for delivery',
                                        style: scheduledOrderTitleText),
                                    const SizedBox(width: 5),
                                    SvgPicture.asset(
                                        'assets/icons/dispatch.svg'),
                                  ],
                                ),
                                Text('18-04-2022',
                                    style: scheduledOrderSubTitleText),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
