import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/Ledger%20Reconciliation/ledger_reconciliation.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import 'date_container.dart';
import '../../../component/image_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.04),
          const DateContainer(),
          SizedBox(height: getProportionateScreenWidth(20)),
          const ImageContainer(),
          SizedBox(height: getProportionateScreenWidth(20)),
          SizedBox(
            width: SizeConfig.screenWidth! / 2,
            child: DefaultButton(
              text: "Account Statement",
              textColor: Colors.white,
              backgroundColor: kRedColor,
              press: () {},
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          SizedBox(
            width: SizeConfig.screenWidth! / 2,
            child: DefaultButton(
              text: "Ledger Reconciliation",
              textColor: Colors.white,
              backgroundColor: Colors.black,
              press: () {
                Navigator.pushNamed(
                    context, LedgerReconciliationScreen.routeName);
              },
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}
