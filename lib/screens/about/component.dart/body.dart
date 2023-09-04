import 'package:agha_steel/screens/about/component.dart/company_text.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

import 'about_container.dart';
import 'custom_app_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              Image.asset('assets/images/logo.png'),
              const AboutContainer(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const CompanyText(),
            ],
          ),
        ),
      ),
    );
  }
}
