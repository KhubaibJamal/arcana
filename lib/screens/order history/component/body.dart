import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'order_history_table.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Image.asset('assets/images/order history.png')),
          SizedBox(height: getProportionateScreenWidth(20)),
          const OrderHistoryTable(),
        ],
      ),
    );
  }
}
