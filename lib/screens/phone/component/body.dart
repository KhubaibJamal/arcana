import 'package:agha_steel/screens/phone/component/login_text.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_headr.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ListView(
        children: [
          const CustomHeader(),
          SizedBox(height: height * 0.08),
          LoginText(height: height, width: width),
        ],
      ),
    );
  }
}
