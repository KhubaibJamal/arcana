import 'package:agha_steel/screens/complaints/component/feedback_container.dart';
import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'feedback_box.dart';

class RatingOne extends StatefulWidget {
  const RatingOne({super.key});

  @override
  State<RatingOne> createState() => _RatingOneState();
}

class _RatingOneState extends State<RatingOne> {
  String? currentOption;
  bool isRadioOneSelected = false;
  bool isRadioTwoSelected = false;
  bool isRadioThreeSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(25),
          horizontal: getProportionateScreenWidth(40)),
      child: Column(
        children: [
          // two radio buttons
          Row(
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
                    isRadioThreeSelected = false;
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
                    isRadioThreeSelected = false;
                  });
                },
              ),
              Text("General Feedback", style: radioButtonTextStyle),
            ],
          ),
          Row(
            children: [
              Radio(
                activeColor: kPrimaryColor,
                value: "Product Inquiry",
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                    isRadioThreeSelected = !isRadioThreeSelected;
                    isRadioOneSelected = false;
                    isRadioTwoSelected = false;
                  });
                },
              ),
              Text("Product Inquiry", style: radioButtonTextStyle),
            ],
          ),

          // if complaints it selected
          if (isRadioOneSelected)
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FeedbackContainer(text: "Late Delivery"),
                    FeedbackContainer(text: "Wrong Product"),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FeedbackContainer(text: "Staff behavior"),
                    FeedbackContainer(text: "Others"),
                  ],
                ),
              ],
            )
          else if (isRadioTwoSelected)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FeedbackContainer(text: "Customer Service"),
                    FeedbackContainer(text: "Others"),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                const FeedbackContainer(text: "Sales Report"),
              ],
            )
          else if (isRadioThreeSelected)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FeedbackContainer(text: "Price list"),
                    FeedbackContainer(text: "Delivery Schedule"),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                const FeedbackContainer(text: "Others"),
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
              backgroundColor: isRadioOneSelected ||
                      isRadioTwoSelected ||
                      isRadioThreeSelected
                  ? kPrimaryColor
                  : const Color(0xFFDFDFDF),
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
