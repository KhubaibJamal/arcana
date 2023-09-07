import 'package:agha_steel/const.dart';
import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:agha_steel/size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
  }

  void nextFocusNode(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextFocusNode(value, pin2FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin2FocusNode,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextFocusNode(value, pin3FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin3FocusNode,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextFocusNode(value, pin4FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin4FocusNode,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextFocusNode(value, pin5FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin5FocusNode,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin5FocusNode!.unfocus();
                      // navigate to home Screen
                      Navigator.pushReplacementNamed(
                          context, HomeScreen.routeName);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
