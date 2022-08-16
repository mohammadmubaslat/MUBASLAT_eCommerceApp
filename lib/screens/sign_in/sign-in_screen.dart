import 'package:flutter/material.dart';

import 'components/body.dart';

class signInScreen extends StatelessWidget {
  const signInScreen({Key? key}) : super(key: key);
  static String routeName = "/signIn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
