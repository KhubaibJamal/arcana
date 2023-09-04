import 'package:agha_steel/screens/login/component/body_text.dart';
import 'package:agha_steel/screens/login/component/welcome_text.dart';
import 'package:agha_steel/screens/phone/phone_registration.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';
import '../../../component/default_button.dart';
import 'background_image.dart';
import 'logo_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      fit: StackFit.expand,
      children: [
        const BackgroundImage(),
        const WelcomeText(),
        const LogoContainer(),
        const BodyText(),
        Positioned(
          bottom: 30,
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            child: SizedBox(
              width: SizeConfig.screenWidth! * 0.95,
              child: DefaultButton(
                text: "Login",
                textColor: Colors.black,
                press: () {
                  Navigator.pushNamed(context, PhoneRegistration.routeName);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
