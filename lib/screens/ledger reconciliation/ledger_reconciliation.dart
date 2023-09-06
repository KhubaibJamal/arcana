import 'package:agha_steel/screens/ledger%20reconciliation/component/body.dart';
import 'package:flutter/material.dart';

import '../../component/icon_container.dart';
import '../../component/screen_title.dart';
import '../../const.dart';

class LedgerReconciliationScreen extends StatelessWidget {
  static String routeName = "/ledger_reconciliation";

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
          title: "Upload Image",
          textColor: kTextColor,
        ),
      ),
      body: const Body(),
    );
  }
}
