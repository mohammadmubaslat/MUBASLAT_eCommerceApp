import 'package:flutter/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens/forget_password.dart/forget_password_screen.dart';
import 'package:foodapp/screens/login_success/login_success.dart';
import 'package:foodapp/screens/sign_in/sign-in_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  splashScreen.routeName: (context) => splashScreen(),
  signInScreen.routeName: (context) => signInScreen(),
  forgetPasswordScreen.routeName: (context) => forgetPasswordScreen(),
  loginSuccessScreen.routeName: (context) => loginSuccessScreen(),
};
