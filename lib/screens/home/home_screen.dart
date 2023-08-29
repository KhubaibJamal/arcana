import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/home/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: DrawerHeader(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/profile.png'),
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
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        "Home",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16,
                        ),
                      ),
                      leading: SvgPicture.asset('assets/icons/home.svg'),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     const SizedBox(width: 10),
                    //     SvgPicture.asset('assets/icons/home.svg'),
                    //     const SizedBox(width: 10),
                    //     const Expanded(
                    //       child: Text(
                    //         "Home",
                    //         style: TextStyle(
                    //           color: kTextColor,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
