import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/complaints/component/rating_one.dart';
import 'package:agha_steel/screens/complaints/component/rating_two.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({super.key});

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  double rating = 0.0;
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
          onRatingUpdate: (newRating) {
            // print(rating);
            setState(() {
              rating = newRating;
            });
          },
        ),
        if (rating == 0.0)
          Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(30)),
              SizedBox(
                width: SizeConfig.screenWidth! / 2,
                child: DefaultButton(
                  text: "Submit",
                  textColor: const Color(0xFFC6C6C6),
                  backgroundColor:
                      rating == 0.0 ? const Color(0xFFDFDFDF) : kPrimaryColor,
                  press: () {},
                ),
              ),
            ],
          )
        else if (rating == 1.0 || rating == 2.0)
          const RatingOne()
        else
          const RatingTwo()
      ],
    );
  }
}
