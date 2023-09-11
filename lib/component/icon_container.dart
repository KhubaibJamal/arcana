import 'package:flutter/material.dart';

import '../size_config.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 40,
          padding: EdgeInsets.all(getProportionateScreenWidth(5)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                offset: Offset(5, 10),
                blurRadius: 20,
                color: Color.fromARGB(210, 241, 241, 237),
              )
            ],
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
