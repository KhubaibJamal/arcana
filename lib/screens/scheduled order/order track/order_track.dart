import 'package:agha_steel/component/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';
import '../../../size_config.dart';

List<Map<String, String>> orderTrackList = [
  // {
  //   "title": "Line up for delivery",
  //   "subTitle": "18-04-2022",
  //   "icon": "assets/icons/dispatch.svg"
  // },
  {
    "title": "Dispatch",
    "subTitle": "18-04-2022",
    "icon": "assets/icons/dispatch.svg"
  },
  {
    "title": "On the way",
    "subTitle": "18-04-2022",
    "icon": "assets/icons/dispatch.svg"
  },
  {
    "title": "Delivered",
    "subTitle": "18-04-2022",
    "icon": "assets/icons/dispatch.svg"
  },
  {
    "title": "Received",
    "subTitle": "18-04-2022",
    "icon": "assets/icons/dispatch.svg"
  },
];

class OrderTrack extends StatefulWidget {
  static String routeName = "/Order_track";

  @override
  State<OrderTrack> createState() => _OrderTrackState();
}

class _OrderTrackState extends State<OrderTrack> {
  List<Widget> widgetList = [
    const OrderTrackContainer(
      title: "Line up for delivery",
      subTitle: "18-04-2022",
      icon: "assets/icons/dispatch.svg",
    )
  ];

  int currentIndex = 0;

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
          title: "Order Tracking",
          textColor: kTextColor,
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
                      child: GestureDetector(
                        onTap: () {
                          if (currentIndex < orderTrackList.length) {
                            setState(() {
                              widgetList.add(
                                OrderTrackContainer(
                                  title: orderTrackList[currentIndex]["title"]!,
                                  subTitle: orderTrackList[currentIndex]
                                      ["subTitle"]!,
                                  icon: orderTrackList[currentIndex]["icon"]!,
                                ),
                              );
                              currentIndex++;
                            });
                          }
                        },
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: widgetList.length,
                          itemBuilder: (context, index) {
                            return widgetList[index];
                          },
                        ),
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

class OrderTrackContainer extends StatelessWidget {
  final String title, subTitle, icon;
  const OrderTrackContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      height: SizeConfig.screenHeight! * 0.1,
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      margin: EdgeInsets.only(bottom: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(18, 18),
            blurRadius: 36,
            color: const Color(0xFFD3D1D840).withOpacity(0.09),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: scheduledOrderTitleText),
              const SizedBox(width: 5),
              SvgPicture.asset(icon),
            ],
          ),
          const SizedBox(height: 5),
          Text(subTitle, style: scheduledOrderSubTitleText),
        ],
      ),
    );
  }
}
