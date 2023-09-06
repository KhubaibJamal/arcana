import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.screenWidth! * 0.7,
        height: 50,
        padding: EdgeInsets.all(getProportionateScreenWidth(15.0)),
        decoration: BoxDecoration(
          color: kTextColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/calendar icon.svg'),
            const SizedBox(width: 10),
            Text(
              "01 Mar 2022- 31 Mar 2022",
              style: tableHeadingStyle.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
