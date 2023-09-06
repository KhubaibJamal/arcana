import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/const.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'complaint_radio_button.dart';
import 'feedback_box.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({super.key});

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  String? rating;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBar.builder(
          direction: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, _) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFABF35),
            );
          },
          onRatingUpdate: (rating) {
            // print(rating);
            setState(() {
              this.rating = rating.toString();
            });
          },
        ),
        rating == "0.0"
            ? Column(
                children: [
                  SizedBox(height: getProportionateScreenWidth(30)),
                  SizedBox(
                    width: SizeConfig.screenWidth! / 2,
                    child: DefaultButton(
                      text: "Submit",
                      textColor: const Color(0xFFC6C6C6),
                      backgroundColor: rating == "0.0"
                          ? const Color(0xFFDFDFDF)
                          : kPrimaryColor,
                      press: () {},
                    ),
                  ),
                ],
              )
            : rating == "1.0" || rating == "2.0"
                ? const RatingOne()
                : Padding(
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(10)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // two radio buttons
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ComplaintRadioButton(
                              value: "General Feedback",
                              text: "General Feedback",
                            ),
                            ComplaintRadioButton(
                              value: "Product Inquiry",
                              text: "Product Inquiry",
                            ),
                          ],
                        ),

                        // FeedbackContainer(text: 'Price list'),
                        // FeedbackContainer(text: 'Price list'),
                        SizedBox(height: getProportionateScreenWidth(10)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FeedbackContainer(text: 'Price list'),
                            FeedbackContainer(text: 'Delivery Schedule'),
                            FeedbackContainer(text: 'Others'),
                          ],
                        ),
                      ],
                    ),
                  ),

        //  feedback text
        // SizedBox(height: getProportionateScreenWidth(20)),
        // const FeedbackBox(),

        // // submit button
        // SizedBox(height: getProportionateScreenWidth(18)),
        // SizedBox(
        //   width: SizeConfig.screenWidth! / 2,
        //   child: DefaultButton(
        //     text: "Submit",
        //     textColor: const Color(0xFFC6C6C6),
        //     backgroundColor:
        //         rating == "0.0" ? const Color(0xFFDFDFDF) : kPrimaryColor,
        //     press: () {},
        //   ),
        // ),
      ],
    );
  }
}

class RatingOne extends StatefulWidget {
  const RatingOne({super.key});

  @override
  State<RatingOne> createState() => _RatingOneState();
}

class _RatingOneState extends State<RatingOne> {
  String? currentOption;
  bool? isSelected = true;
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
                    isSelected = false;
                  });
                },
              ),
              Text("Complaints", style: radioButtonTextStyle),
              // ComplaintRadioButton(
              //   value: "Complaints",
              //   text: "Complaints",
              // ),
              // ComplaintRadioButton(
              //   value: "General Feedback",
              //   text: "General Feedback",
              // ),
            ],
          ),
          // const ComplaintRadioButton(
          //   value: "Product Inquiry",
          //   text: "Product Inquiry",
          // ),

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
              backgroundColor:
                  isSelected! ? const Color(0xFFDFDFDF) : kPrimaryColor,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackContainer extends StatelessWidget {
  final String text;
  const FeedbackContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: scheduledOrderSubTitleText.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
