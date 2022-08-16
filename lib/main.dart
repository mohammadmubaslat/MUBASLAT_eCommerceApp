import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/routs.dart';
import 'package:foodapp/screens/splash/splash_screen.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),

      // home: splashScreen(),
      initialRoute: splashScreen.routeName,
      routes: routes,
    );
  }
}
