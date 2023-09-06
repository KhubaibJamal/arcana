import 'package:agha_steel/screens/complaints/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/icon_container.dart';
import '../../component/screen_title.dart';
import '../../const.dart';

class ComplaintsScreen extends StatelessWidget {
  static String routeName = "/complaints";

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
          title: "Feedback/Inquiry/Complaints",
          textColor: kPrimaryColor,
        ),
      ),
      body: const Body(),
    );
  }
}
