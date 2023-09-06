import 'package:agha_steel/component/default_button.dart';
import 'package:agha_steel/component/image_container.dart';
import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/ledger%20reconciliation/component/upload_button.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import 'custom_radio_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        const ImageContainer(),

        // radio button
        const CustomRadioButton(),

        // upload button
        SizedBox(height: getProportionateScreenWidth(15)),
        SizedBox(
          width: SizeConfig.screenWidth! / 2,
          child: DefaultButton(
            text: "Upload Image",
            textColor: Colors.white,
            backgroundColor: kTextColor,
            press: () {
              uploadImage(context);
            },
          ),
        ),
      ],
    );
  }

  Future<dynamic> uploadImage(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.only(top: 450),
          children: [
            Column(
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UploadButton(
                        text: "Photo Gallery",
                        bgColor: kGreyColor,
                        press: () {},
                      ),
                      const Divider(color: kSecondaryTextColor, thickness: 1.5),
                      UploadButton(
                        text: "Camera",
                        bgColor: kGreyColor,
                        press: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                UploadButton(
                  text: "Cancel",
                  bgColor: Colors.white,
                  press: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
