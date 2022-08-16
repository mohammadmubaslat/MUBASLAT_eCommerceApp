import 'package:flutter/material.dart';

import 'package:foodapp/size_config.dart';

import 'components/body.dart';

class forgetPasswordScreen extends StatelessWidget {
  const forgetPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forget_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forget Password"),
        ),
        body: Body());
  }
}
