import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class FeedbackContainer extends StatefulWidget {
  final String text;
  const FeedbackContainer({
    super.key,
    required this.text,
  });

  @override
  State<FeedbackContainer> createState() => _FeedbackContainerState();
}

class _FeedbackContainerState extends State<FeedbackContainer> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          decoration: BoxDecoration(
            color: isTapped ? kPrimaryColor : Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            widget.text,
            style: scheduledOrderSubTitleText.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
