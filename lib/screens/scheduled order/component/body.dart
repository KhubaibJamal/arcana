import 'package:agha_steel/screens/scheduled%20order/order%20detail/complete%20order%20detail/complete_order_detail.dart';
import 'package:agha_steel/screens/scheduled%20order/order%20track/order_track.dart';
import 'package:flutter/material.dart';
import '../../../component/icon_container.dart';
import '../../../size_config.dart';
import '../order detail/complete order detail/order_detail.dart';
import 'complete_text_container.dart';
import 'order_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const IconContainer(),
              SizedBox(height: getProportionateScreenWidth(30)),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  OrderCard(
                    orderStatus: "Received",
                    orderNumber: "#10013332",
                    orderStatusIcon: "assets/icons/complete order.svg",
                    trackButton: () {
                      Navigator.pushNamed(context, OrderTrack.routeName);
                    },
                    detailButton: () {
                      Navigator.pushNamed(
                          context, CompleteOrderDetail.routeName);
                    },
                  ),
                  const Positioned(
                    top: -30,
                    right: 15,
                    child: CompleteTextContainer(),
                  ),
                ],
              ),
              OrderCard(
                orderStatus: "Dispatched",
                orderNumber: "#10013331",
                orderStatusIcon: "assets/icons/dispatch.svg",
                trackButton: () {},
                detailButton: () {
                  Navigator.pushNamed(context, OrderDetail.routeName);
                },
              ),
              OrderCard(
                orderStatus: "On the way",
                orderNumber: "#10013228",
                orderStatusIcon: "assets/icons/on the way.svg",
                trackButton: () {},
                detailButton: () {
                  Navigator.pushNamed(context, OrderDetail.routeName);
                },
              ),
              OrderCard(
                orderStatus: "Line up for delivery",
                orderNumber: "#10013227",
                orderStatusIcon: "assets/icons/lined up for detail.svg",
                trackButton: () {},
                detailButton: () {
                  Navigator.pushNamed(context, OrderDetail.routeName);
                },
              ),
              OrderCard(
                orderStatus: "Delivered",
                orderNumber: "#10013222",
                orderStatusIcon: "assets/icons/complete order.svg",
                trackButton: () {},
                detailButton: () {
                  Navigator.pushNamed(context, OrderDetail.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
