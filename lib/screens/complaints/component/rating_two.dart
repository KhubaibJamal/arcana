import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'feedback_box.dart';
import 'feedback_container.dart';

class RatingTwo extends StatefulWidget {
  const RatingTwo({
    super.key,
  });

  @override
  State<RatingTwo> createState() => _RatingTwoState();
}

class _RatingTwoState extends State<RatingTwo> {
  String? currentOption;

  bool isRadioOneSelected = false;
  bool isRadioTwoSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: Column(
        children: [
          // two radio buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                activeColor: kPrimaryColor,
                value: "Complaints",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioOneSelected = !isRadioOneSelected;
                    isRadioTwoSelected = false;
                  });
                },
              ),
              Text("Complaints", style: radioButtonTextStyle),
              Radio(
                activeColor: kPrimaryColor,
                value: "General Feedback",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioTwoSelected = !isRadioTwoSelected;
                    isRadioOneSelected = false;
                  });
                },
              ),
              Text("General Feedback", style: radioButtonTextStyle),
            ],
          ),

          SizedBox(height: getProportionateScreenWidth(10)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FeedbackContainer(text: 'Price list'),
              FeedbackContainer(text: 'Delivery Schedule'),
              FeedbackContainer(text: 'Others'),
            ],
          ),

          //  feedback text
          SizedBox(height: getProportionateScreenWidth(20)),
          const FeedbackBox(),

          // submit button
          SizedBox(height: getProportionateScreenWidth(18)),
          SizedBox(
            width: SizeConfig.screenWidth! / 2,
            child: DefaultButton(
              text: "Submit",
              textColor: const Color(0xFFC6C6C6),
              backgroundColor: kPrimaryColor,
              press: () {
                print("press");
                // show dialog
              },
            ),
          ),
        ],
      ),
    );
  }
}
