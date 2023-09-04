import 'package:agha_steel/screens/about/about_screen.dart';
import 'package:agha_steel/screens/home/home_screen.dart';
import 'package:agha_steel/screens/login/login_screen.dart';
import 'package:agha_steel/screens/phone/phone_registration.dart';
import 'package:agha_steel/screens/profile/profile_screen.dart';
import 'package:agha_steel/screens/setting/setting_screen.dart';
import 'package:agha_steel/screens/splash/splash_screen.dart';
import 'package:agha_steel/screens/verification/verification_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  PhoneRegistration.routeName: (context) => PhoneRegistration(),
  VerificationScreen.routeName: (context) => VerificationScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AboutScreen.routeName: (context) => AboutScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
};
